#include "mainwindow.h"
#include <iostream>

#ifndef _ENDPOINTS__H
#define _ENDPOINTS__H

void endpoints(CCyBulkEndPoint *BulkInEpt, CCyBulkEndPoint *BulkOutEpt)
{
    using namespace std;

    // Find bulk endpoints in the EndPoints[] array
    //CCyBulkEndPoint *BulkInEpt = NULL;                    Las puse en el main.
    //CCyBulkEndPoint *BulkOutEpt = NULL;
    CCyUSBDevice *USBDevice = new CCyUSBDevice(NULL);
    int eptCount = USBDevice->EndPointCount();
    cout << "Cantidad de endpoints activos (incluyendo el de control) : " << eptCount << endl;

    // Skip EndPoints[0], which we know is the control endpoint
    for (int i=1; i<eptCount; i++) {
    bool bIn = ((USBDevice->EndPoints[i]->Address & 0x80)==0x80);
    bool bBulk = (USBDevice->EndPoints[i]->Attributes == 2);
    if (bBulk && bIn) BulkInEpt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
    if (bBulk && !bIn) BulkOutEpt = (CCyBulkEndPoint *) USBDevice->EndPoints[i];
    }

}

#endif // _ENDPOINTS__H
