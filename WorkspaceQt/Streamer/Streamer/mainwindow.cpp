#include "mainwindow.h"
#include "ui_mainwindow.h"

static long ShowStats(long , long, unsigned long , unsigned long);
static void XferLoop();

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{

    ui->setupUi(this);

    this->connect(this->ui->Start_pushButton, SIGNAL(clicked()), this, SLOT(Start_pushButton_click()));
    this->connect(this->ui->Start_pushButton, SIGNAL(clicked()), this, SLOT(StartBtn_Click()));

}

MainWindow::~MainWindow()
{

    delete ui;
}



void MainWindow::Start_pushButton_click()
{
    long XferRate;

    this->ui->checkBox->setChecked(true);
    XferRate = ShowStats(1,1,1,1);
    this->ui->progressBar->setValue(XferRate);

}

void MainWindow::Led_checked()
{
    //ACA PONER QUE SE HAGA EL LOOPBACK PRIMERO Y DESPUES ESTABLECER QUE SE PRENDA EL LED.
    printf("I'M STREAMING, BABY!!");
}

/********************************************************************************/

//Aca empieza el codigo adaptado y comentado de la funcion Streamer.cpp original

void MainWindow::StartBtn_Click()
{

}
//////////////////////////////////////////////////////////////////////////////////
//
// EL LOOP
//
//////////////////////////////////////////////////////////////////////////////////

static void XferLoop()
{
    long BytesXferred = 0;
    unsigned long Successes = 0;
    unsigned long Failures = 0;
    int i = 0;
                                        long QueueSize = 100000;
                                        long MAX_QUEUE_SZ = 1000000;

    // Allocate the arrays needed for queueing
    PUCHAR			*buffers		= new PUCHAR[QueueSize];
    CCyIsoPktInfo	**isoPktInfos	= new CCyIsoPktInfo*[QueueSize];
    PUCHAR			*contexts		= new PUCHAR[QueueSize];
    OVERLAPPED		inOvLap[MAX_QUEUE_SZ];

//   long len = EndPt->MaxPktSize * PPX; // Each xfer request will get PPX isoc packets

//    EndPt->SetXferSize(len);

/*    // Allocate all the buffers for the queues
    for (i=0; i< QueueSize; i++)
    {
        buffers[i]        = new UCHAR[len];
        isoPktInfos[i]    = new CCyIsoPktInfo[PPX];
        inOvLap[i].hEvent = CreateEvent(NULL, false, false, NULL);

        memset(buffers[i],0xEF,len);
    }
*/
    long t1 = 0;	// For calculating xfer rate

    // Queue-up the first batch of transfer requests
/*    for (i=0; i< QueueSize; i++)
    {
        contexts[i] = EndPt->BeginDataXfer(buffers[i], len, &inOvLap[i]);
        if (EndPt->NtStatus || EndPt->UsbdStatus) // BeginDataXfer failed
        {
            Display(String::Concat("Xfer request rejected. NTSTATUS = ",EndPt->NtStatus.ToString("x")));
            AbortXferLoop(i+1, buffers,isoPktInfos,contexts,inOvLap);
            return;
        }
    }

    i=0;

    // The infinite xfer loop.
    for (;bStreaming;)
    {
        long rLen = len;	// Reset this each time through because
        // FinishDataXfer may modify it

        if (!EndPt->WaitForXfer(&inOvLap[i], TimeOut))
        {
            EndPt->Abort();
            if (EndPt->LastError == ERROR_IO_PENDING)
                WaitForSingleObject(inOvLap[i].hEvent,2000);
        }

        if (EndPt->Attributes == 1) // ISOC Endpoint
        {
            if (EndPt->FinishDataXfer(buffers[i], rLen, &inOvLap[i], contexts[i], isoPktInfos[i]))
            {
                CCyIsoPktInfo *pkts = isoPktInfos[i];
                for (int j=0; j< PPX; j++)
                {
                    if ((pkts[j].Status == 0) && (pkts[j].Length<=EndPt->MaxPktSize))
                    {
                        BytesXferred += pkts[j].Length;

                        if (bShowData)
                            Display16Bytes(buffers[i]);

                        Successes++;
                    }
                    else
                        Failures++;

                    pkts[j].Length = 0;	// Reset to zero for re-use.
                    pkts[j].Status = 0;
                }

            }
            else
                Failures++;

        }

        else // BULK Endpoint
        {
            if (EndPt->FinishDataXfer(buffers[i], rLen, &inOvLap[i], contexts[i]))
            {
                Successes++;
                BytesXferred += len;

                if (bShowData)
                    Display16Bytes(buffers[i]);
            }
            else
                Failures++;
        }


        if (BytesXferred < 0) // Rollover - reset counters
        {
            BytesXferred = 0;
            t1 = DateTime::Now;
        }

        // Re-submit this queue element to keep the queue full
        contexts[i] = EndPt->BeginDataXfer(buffers[i], len, &inOvLap[i]);
        if (EndPt->NtStatus || EndPt->UsbdStatus) // BeginDataXfer failed
        {
            Display(String::Concat("Xfer request rejected. NTSTATUS = ",EndPt->NtStatus.ToString("x")));
            AbortXferLoop(QueueSize,buffers,isoPktInfos,contexts,inOvLap);
            return;
        }

        i++;

        if (i == QueueSize) //Only update the display once each time through the Queue
        {
            i=0;
            ShowStats(t1, BytesXferred, Successes, Failures);
        }

    }  // End of the infinite loop

    // Memory clean-up
    //AbortXferLoop(QueueSize,buffers,isoPktInfos,contexts,inOvLap);
    */
}


/////////////////////////////////////////////////////////////////////////////////////
//
// EL ESCRITOR DE LA BARRA
//
/////////////////////////////////////////////////////////////////////////////////////


static long ShowStats(long t, long bytesXferred, unsigned long successes, unsigned long failures)
    //la funcion que maneja la transferencia de los datos
{
        long XferRate;
        long t2 = 10000;
                            /* ORIGINAL =   TimeSpan elapsed = DateTime::Now.Subtract(t);

                                            long totMS = (long)elapsed.TotalMilliseconds;
                                            if (totMS <= 0)	return;*/

        XferRate = bytesXferred / (t2 - t);

        //Declara la variable "elapsed" que es el tiempo que tomo la transferencia
        //De ahi extrae los milisegundos empleados.
        //Declara la variable XferRate como la cantidad de bytes transferidos por milisegundo

        // Convert to KB/s
        XferRate = XferRate * 1000 / 1024;

        // Truncate last 1 or 2 digits
        int rounder = (XferRate > 2000) ? 100 : 10;
        XferRate = XferRate / rounder * rounder;

        if(XferRate>625000)
            XferRate = 625000;

        XferRate = 625000/2;
                                            //thread safe-commented
                                            /*CheckForIllegalCrossThreadCalls = false;

                                            XferRateBar->Value = XferRate;
                                            XferRateLabel->Text = XferRate.ToString();

                                            SuccessBox->Text = successes.ToString();
                                            FailureBox->Text = failures.ToString();*/


        return (XferRate);
    }


