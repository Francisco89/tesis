#ifndef _ESCRIBIRBULK__H
#define _ESCRIBIRBULK__H

#include "mainwindow.h"

void escribirBulk(CCyBulkEndPoint *BulkOutEndPt)
{
    using namespace std;
    unsigned char buf[] = "hello world";
    LONG length = 11;
    CCyUSBDevice *USBDevice = new CCyUSBDevice(NULL);

    if (USBDevice->BulkOutEndPt)
    {
       USBDevice->BulkOutEndPt->XferData(buf, length);
       cout << endl;
       cout << "Escribi sin problemas" << endl;
       cout << "Direccion: " << USBDevice->BulkOutEndPt << endl;
    }
}

#endif // _ESCRIBIRBULK__H
