#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <iostream>
#include <cstring>
#include <stdlib.h>
#include <conio.h>
#include <sstream>

#define SSTR( x ) dynamic_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()

using namespace std;


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)

{

   ui->setupUi(this);
//////////////////////////////////////////////////////////////////////////////////////////////////////

   CCyUSBDevice *USBDevice = new CCyUSBDevice(NULL);
   CCyBulkEndPoint *BulkInEndPt = NULL;
   CCyBulkEndPoint *BulkOutEndPt = NULL;

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
               this->ui->Endpoint_comboBox->addItem(s);
       }
      //cout << USBDevice->EndPoints[e] << endl;                           Mostrador de endpoints.
   }

//////////////////////////////////////////////////////////////////////////////////////////////////////


    //Recontador de endpoints, ya lo hicimos antes pero aca queda mas explicito.
    for (int i=1; i<eptCount; i++)
    {
    bool bIn = ((USBDevice->EndPoints[i]->Address & 0x80)==0x80);
    bool bBulk = (USBDevice->EndPoints[i]->Attributes == 2);
    if (bBulk && bIn) BulkInEndPt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
    if (bBulk && !bIn) BulkOutEndPt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
    }

    /*for (int i=1; i<eptCount; i++)
    {
        cout << USBDevice->EndPoints[i] << endl;
    }*/
//////////////////////////////////////////////////////////////////////////////////////////////////////

    //unsigned long XferRate;
    //unsigned char buf[] = "hello world";
    const int packetSize = 16;                      //Multiplo de 16 conviene siempre, sino rellena hasta llegar a uno
    LONG len = packetSize;                          //Si o si tienen q ser LONG
    unsigned char outBuffer[packetSize];            //Si o si tienen q ser unsigned char
    unsigned char inBuffer[packetSize];
    unsigned char hola[]="hola man :)";             //16, 15 + end of string
    bool staOut, staIn;

    if (USBDevice->BulkOutEndPt)
    USBDevice->BulkOutEndPt->XferData(outBuffer, len);


    staOut = USBDevice->BulkOutEndPt->XferData(outBuffer, len);
    staIn = USBDevice->BulkInEndPt->XferData(inBuffer, len);

    cout << "Transferencia: " << (staOut ? "Exitosa" : "Fallida")  << endl; // 1 = transfirio, 0 = fallo;
    cout << "Recepcion: " << (staIn ? "Exitosa" : "Fallida") << endl; // 1 = transfirio, 0 = fallo;
    cout << "Salio: " << outBuffer << endl;
    cout << "Llego: " << inBuffer << endl;

    //cout << staIn << endl; // 1 = transfirio, 0 = fallo;

    USBDevice->Close(); // (9)*/





//////////////////////////////////////////////////////////////////////////////////////////////////////
   this->connect(this->ui->Start_pushButton, SIGNAL(clicked()), this, SLOT(Start_pushButton_click()));

}

MainWindow::~MainWindow()
{

    delete ui;
}

void MainWindow::Start_pushButton_click()
{
  /*unsigned long XferRate;
    unsigned char buf[] = "hello world";
    LONG length = 11;
    cout << "hola mama" << endl;
    //

    //if (USBDevice->BulkOutEndPt)
    //USBDevice->BulkOutEndPt->XferData(buf, length);

    //dummy = XferData();

    //this->ui->progressBar->setValue(XferRate);unsigned long XferRate;
    unsigned char buf[] = "hello world";
    LONG length = 11;
*/
}
