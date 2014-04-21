//Para usar con el proyecto AutoMaster

#include "widget.h"
#include "ui_widget.h"
#include <iostream>
#include <cstring>
#include <stdlib.h>
#include <conio.h>
#include <sstream>
#include <stdio.h>
#include <windows.h>
#include <tgmath.h>
#include <climits>
#include <omp.h>
#include <cyioctl.h>


#define SSTR( x ) dynamic_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()



using namespace std;
double PCFreq = 0.0;
__int64 CounterStart = 0;

void StartCounter()
{
    LARGE_INTEGER li;
    if(!QueryPerformanceFrequency(&li))
    printf("QueryPerformanceFrequency failed!\n");

    PCFreq = (li.QuadPart)/1000000.0;

    QueryPerformanceCounter(&li);
    CounterStart = li.QuadPart;
}
double GetCounter()
{
    LARGE_INTEGER li;
    QueryPerformanceCounter(&li);
    return (li.QuadPart-CounterStart)/PCFreq;
}

Widget::Widget(QWidget *parent) :
    QWidget(parent)//,
    //ui(new Ui::Widget)
{
    //ui->setupUi(this);

    // ////////////////////////////////////////////////////////////////////////////////////////////////////

       cout << "hola" << endl;

       CCyUSBDevice *USBDevice = new CCyUSBDevice(NULL);
       CCyBulkEndPoint *BulkInEndPt = NULL;
       CCyBulkEndPoint *BulkOutEndPt = NULL;

    //////////////////////////////////////////////////////////////////////////////////////////////////////

       int eptCount = USBDevice->EndPointCount();
       cout << "Cantidad de endpoints activos (incluyendo el de control) : " << eptCount << endl;

       // Skip EndPoints[0], which we know is the control endpoint
       for (int i=1; i<eptCount; i++) {
       bool bIn = ((USBDevice->EndPoints[i]->Address & 0x80)==0x80);
       bool bBulk = (USBDevice->EndPoints[i]->Attributes == 2);
       if (bBulk && bIn) BulkInEndPt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
       if (bBulk && !bIn) BulkOutEndPt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
       }
       for (int e=1; e<eptCount; e++)
       {
           CCyUSBEndPoint *ept = USBDevice->EndPoints[e];
           char s[100]={""}, *t, u[10]={""};

           // INTR, BULK and ISO endpoints are supported.
          if ((ept->Attributes >= 1) && (ept->Attributes <= 3))
           {
               //cout << int(ept->Attributes) << endl; // Tira "2" -> es BULK (0 Control, 1 ISOCHRONOUS y 3 INTERRUPT)

               if (ept->Attributes == 1)
                   t="ISOC ";
               else if (ept->Attributes == 2)
                   t="BULK ";
               else
                   t="INTR ";

               strcat(s, t);
               strcat(s,ept->bIn ? "IN,      " : "OUT,   ");
               t=itoa(ept->MaxPktSize,u,10);
               strcat(s,t);
               strcat(s," Bytes,");

               t=itoa(ept->ssmaxburst,u,10);
               if((USBDevice->BcdUSB = 0x0300))
               {
                   strcat(s, t);
                   strcat(s," MaxBurst, (");
               }
                   t=itoa(e,u,10);
                   strcat(s,t);
                   strcat(s, " - ");
                   strcat(s,"0x");
                   t=itoa(ept->Address,u,16);
                   strcat(s,t);
                   strcat(s,")");
                   cout << s << endl;
                   //this->ui->Endpoint_comboBox->addItem(s);
           }
          //cout << USBDevice->EndPoints[e] << endl;                           Mostrador de endpoints.
       }

    // ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Unidad de tiempo estandar, microsegundo.
    //
    // Genera un PWM de 16 bits (todos 1s o 0s) cada 100ms, tiene alguna varianza pero no va acumulando error.
    // Arranca el contador del PC y setea el periodo del PWM. Va muestreando el tiempo 0 < t < T_pwm (1 segundo).
    // Si t < T_on, escribe el 1, en otro caso, en 0.
    // Luego entra en un loop que duerme 1ms y muestrea t. Sale del loop si t es mayor al tiempo de muestreo (100ms)
    // Vuelve a muestrear t y lo compara con T_on y escribe 1 o 0 correspondientemente y vuelve al loop de delay.
    // Si o si tiene que dormir o la compu se cuelga MAL (anda, pero se traba todo el qtcreator).

        const int packetSize =2;                       //Maximo 1024 por buffer, usando 16 buffers.
        LONG len = packetSize;
        LONG numero = LONG_MAX;                         //Si o si tienen q ser LONG
        unsigned char outBuffer[packetSize]="1";            //Si o si tienen q ser unsigned char
        unsigned char inBuffer[packetSize];
        unsigned char uno = 0xFF;
        unsigned char cero = 0x00;
        unsigned char buf=0xFFFF;
        bool staOut, staIn;
        double T_pwm = 1000000;                         //1 segundo
        double D = 0.1;                                //Duty Cycle
        double T_on = D*T_pwm;                          //Tiempo en estado alto
        double t = 0;                                   //Variable auxiliar
        double muestreo = 1000;                        //Variable de muestreo de la señal (10ms)
        double u = 0;
        double start, end;
        int i=0;
        unsigned char j = 0;
        int cont=0;
        int tiempin = 10;
        int out=0;
        //for(i=0;i<1024;i++)
            //outBuffer[i]=1;
        int contador = 0;


        //cout << int((outBuffer[10])) << endl;

        StartCounter();
        u=GetCounter();
        //start = omp_get_wtime();

        //#pragma omp parallel //for //schedule(dynamic,4) //reduction(+ : primes)

        // This example assumes that the device automatically sends back,
        // over its bulk-IN endpoint, any bytes that were received over its
        // bulk-OUT endpoint (commonly referred to as a loopback function)

        OVERLAPPED outOvLap, inOvLap, ov;
        outOvLap.hEvent = CreateEvent(NULL, false, false, L"CYUSB_OUT");
        ov.hEvent = CreateEvent(NULL, false, false, L"CYUSB_OUT");

        HANDLE hDevice = USBDevice->DeviceHandle(); // Handle al driver

        DWORD dwBytes = 0;
        UCHAR endPts;
        DeviceIoControl(hDevice, IOCTL_ADAPT_GET_NUMBER_ENDPOINTS,
        NULL, 0,
        &endPts, sizeof (endPts),
        &dwBytes, NULL);

        cout << int(endPts) << endl;

        DWORD dwBytes2 = 0;
        UCHAR Address=0x01;
        /*DeviceIoControl(hDevice, IOCTL_ADAPT_GET_ADDRESS,
        &Address, sizeof (UCHAR),
        &Address, sizeof (UCHAR),
        &dwBytes, NULL);*/                            // Todo esto es para This command retrieves the USB address of the device from the Windows host controller driver. ME fije en el USB Trace y es el 8 y aca tambien tira el 8  :3

        //if ( hDevice == INVALID_HANDLE_VALUE ) return NULL;

        LONG bufLen=len;
        int iXmitBufSize = sizeof (SINGLE_TRANSFER);
        PUCHAR pXmitBuf = new UCHAR[iXmitBufSize];
        ZeroMemory (pXmitBuf, iXmitBufSize);
        PSINGLE_TRANSFER pTransfer = (PSINGLE_TRANSFER) pXmitBuf;
        pTransfer->ucEndpointAddress = Address;
        pTransfer->IsoPacketLength = 0;
        pTransfer->BufferOffset = 0;
        pTransfer->BufferLength = 0;
        DWORD dwReturnBytes;


        BulkOutEndPt->SetXferSize(len/2);

        //return;

        //for (i=1;i<20;i++)

        for(;;)
        {
            if (GetCounter()-u > 10)
            {
                //PSINGLE_TRANSFER pTransfer = (PSINGLE_TRANSFER) pXmitBuf;
                //pTransfer->ucEndpointAddress = Address;
                staOut = USBDevice->BulkOutEndPt->XferData(&uno, len);
                //staIn = USBDevice->BulkInEndPt->XferData(inBuffer, len);
                //memcpy(out, (int*)&outBuffer, sizeof(int));
                //out++;
                //memcpy(outBuffer, (char*)&out, sizeof(int));
                //cout << *outBuffer << endl;
                //cout << GetCounter()-u << endl;
                //if (GetCounter()-u > 1000){
                //DeviceIoControl(hDevice, IOCTL_ADAPT_SEND_NON_EP0_TRANSFER,pXmitBuf,iXmitBufSize,&buf,len,&dwReturnBytes,&outOvLap);
                //buf=~buf;
    //DeviceIoControl (hDevice,IOCTL_ADAPT_SEND_NON_EP0_DIRECT,pXmitBuf, iXmitBufSize,&buf, bufLen,&dwReturnBytes, &ov);
                    //PUCHAR outContext = pXmitBuf;
                    //delete pXmitBuf;
    //if(fmod(contador,100000)==0)
    //cout << (int)pXmitBuf << endl;
    //contador++;

          //UCHAR *outContext = USBDevice->BulkOutEndPt->BeginDirectXfer(&buf,len, &outOvLap);
                //UCHAR *inContext = USBDevice->BulkInEndPt->BeginDataXfer(inBuf, length, &inOvLap);
          //USBDevice->BulkOutEndPt->WaitForXfer(&outOvLap,100);
                //USBDevice->BulkInEndPt->WaitForXfer(&inOvLap,100);
          //USBDevice->BulkOutEndPt->FinishDataXfer(&buf, len, &outOvLap,outContext);
                //USBDevice->BulkInEndPt->FinishDataXfer(inBuf, length, &inOvLap,inContext);
                //cout << GetCounter()-u << endl;
                //cout << buf << endl;
                u=GetCounter();
        }
        }


        delete pXmitBuf;

        CloseHandle(outOvLap.hEvent);
        CloseHandle(inOvLap.hEvent);
        /*while (1)
        {
            t = GetCounter();
            if( (t-u) > tiempin)
            {

                //cout << "Error = " << t-u-tiempin << endl;
                //cout << "Error = " << t-u-tiempin << "    " ;
                u=t;
                //cout << "Segundo = " << u/tiempin << " --- " << numero << endl;

                staOut = USBDevice->BulkOutEndPt->XferData(&uno, len);
                cout << ":D" << endl;

                //staIn = USBDevice->BulkInEndPt->XferData(inBuffer, len);

                //for (i=0;i<packetSize;i++)
                //cout << outBuffer[i] ;
                //cout << " -> " ;
                //for (i=0;i<packetSize/100;i++)
                //cout << inBuffer[i] ;
                //cout << endl;
                //cout << sizeof(outBuffer) << endl;
                //cout << staIn << endl;
                //j++;
            }

        }*/


        //StartCounter();
        //t=CounterStart;


        /*while( 1 )
        {
            t = fmod(GetCounter(),T_pwm);
            //cout << ((t < T_on) ? 0x0001 : 0x0000) << endl;
            u=0;
            buf = ((t < T_on) ? uno : cero);
            for ( i = 0; i < len ; i++ )
            outBuffer[i] = buf ;
            //staOut = USBDevice->BulkOutEndPt->XferData(outBuffer, len);
            //cout << outBuffer << "   " << staOut << endl;

            while( u < muestreo )
            {
                //Sleep(1);
                staOut = USBDevice->BulkOutEndPt->XferData(outBuffer, len);
                u=fmod(GetCounter(),T_pwm);
            }

            //staIn = USBDevice->BulkInEndPt->XferData(inBuffer, len); // Hay que recorger el paquete si o si o el buffer se llena.
            //cout << staIn << endl;
            //cont++;
            if(cont == 1)
            {
                cout <<  "Salio: " << outBuffer << endl; //" ; Entro: " << inBuffer << endl;
                cont=0;
            }
            //staIn = USBDevice->BulkInEndPt->XferData(inBuffer, len);
            //cout <<  "Salio: " << outBuffer << endl; //" ; Entro: " << inBuffer << endl;
            staIn = USBDevice->BulkOutEndPt->Reset();
        }*/

    /*    while(1)
        {
            //for (i=0;i<1000;i++){
            staOut = USBDevice->BulkOutEndPt->XferData(&uno, len);
            usleep(1000);
            //t = fmod(GetCounter(),T_pwm);
            //cout << t << endl;
            //}
            //for (i=0;i<1000;i++){
            staIn = USBDevice->BulkOutEndPt->XferData(&cero, len);
            usleep(1000);
            //}
            t = GetCounter();
            if((t-u)/PCFreq > 500)
            {
                u=t;
                staOut = USBDevice->BulkOutEndPt->XferData(&uno, len);
            }
        }
    */

      /*for (int i=0; i<packetSize; i++)
            outBuffer[i] = i;

        for (int cont=1;cont < 100000; cont++)
        staOut = USBDevice->BulkOutEndPt->XferData(outBuffer, len);

        staIn = USBDevice->BulkInEndPt->XferData(inBuffer, len);*/


        USBDevice->Close(); // (9)
    // ////////////////////////////////////////////////////////////////////////////////////////////////////



}

Widget::~Widget()
{
    delete ui;
}
