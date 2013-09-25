//////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                          //
// Streamer casero                                                                          //
// Para ocuparlo hay que poner el firmware USBBulkSourceSink                                //
//                                                                                          //
//////////////////////////////////////////////////////////////////////////////////////////////

#include "mainwindow.h"
#include <QApplication>
#include <CyAPI.h>
#include <iostream>


int main(int argc, char *argv[])
{
    using namespace std;
    QApplication a(argc, argv);
    MainWindow w;
/*
    CCyUSBDevice *USBDevice = new CCyUSBDevice(NULL);
    CCyBulkEndPoint *BulkInEndPt = NULL;
    CCyBulkEndPoint *BulkOutEndPt = NULL;



    //_endpoints_
    int eptCount = USBDevice->EndPointCount();
    cout << "Cantidad de endpoints activos (incluyendo el de control) : " << eptCount << endl;
    // Skip EndPoints[0], which we know is the control endpoint
    for (int i=1; i<eptCount; i++) {
    bool bIn = ((USBDevice->EndPoints[i]->Address & 0x80)==0x80);
    bool bBulk = (USBDevice->EndPoints[i]->Attributes == 2);
    if (bBulk && bIn) BulkInEndPt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
    if (bBulk && !bIn) BulkOutEndPt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
    }
    cout << "Endpoint IN del streamer : " << USBDevice->BulkInEndPt << endl;
    cout << "Endpoint OUT del streamer : " << USBDevice->BulkOutEndPt << endl;


                               //Cacho para poner el nombre de los endpoints en la caja



    //_escribirBulk_
    unsigned char buf[] = "hello world";

    LONG length = 11;

    if (USBDevice->BulkOutEndPt)
    {
       USBDevice->BulkOutEndPt->XferData(buf, length);
       cout << endl;
       cout << "Escribi sin problemas" << endl;
       //cout << "Direccion: " << &(USBDevice->BulkOutEndPt) << endl;
    }



    //_transferirBulk_
    USBDevice->BulkInEndPt = USBDevice->BulkOutEndPt;
    cout << endl;
    cout << "Transferi sin problemas" << endl;
    //cout << "Direccion: " << &(USBDevice->BulkOutEndPt) << " a " << &(USBDevice->BulkInEndPt) << endl;



    //_leerBulk_



*/
/*  version();
  *   cout << "Endpoint OUT del streamer : " << *BulkOutEndPt << endl;
   *   endpoints(BulkInEndPt, BulkOutEndPt) ;
    *   cout << "Endpoint IN del streamer : " <<USBDevice->BulkInEndPt << endl;
     *   cout << "Endpoint OUT del streamer : " << USBDevice->BulkOutEndPt << endl;
      *   escribirBulk(BulkOutEndPt);
       */

    w.show();
    return a.exec();
}
