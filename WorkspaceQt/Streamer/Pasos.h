/*Copie la estructura cascaron del Ricardo y modifique el "main.cpp" agregandole
 *
 *  CCyUSBDevice *USBDevice = new CCyUSBDevice(NULL);
 *  OVERLAPPED outOvLap, inOvLap;
 *  outOvLap.hEvent = CreateEvent(NULL, false, false, L"CYUSB_OUT");
 *  inOvLap.hEvent = CreateEvent(NULL, false, false, L"CYUSB_IN");
 *  unsigned char inBuf[128];
 *  ZeroMemory(inBuf, 128);
 *  unsigned char buffer[128];
 *  LONG length = 128;
 *  // Just to be cute, request the return data before initiating the loopback
 *  UCHAR *inContext = USBDevice->BulkInEndPt->BeginDataXfer(inBuf, length, &inOvLap);
 *  UCHAR *outContext = USBDevice->BulkOutEndPt->BeginDataXfer(buffer, length,
 *  &outOvLap);
 *  USBDevice->BulkOutEndPt->WaitForXfer(&outOvLap,100);
 *  USBDevice->BulkInEndPt->WaitForXfer(&inOvLap,100);
 *  USBDevice->BulkOutEndPt->FinishDataXfer(buffer, length, &outOvLap,outContext);
 *  USBDevice->BulkInEndPt->FinishDataXfer(inBuf, length, &inOvLap,inContext);
 *  CloseHandle(outOvLap.hEvent);
 *  CloseHandle(inOvLap.hEvent);
 *
 *No compila por un monto de errores, falta de definicion de estructuras y tipos entre otras cosas (UCHAR, DWORD, etc.)
 *Agregue la biblioteca <windef.h> y en CyAPI.h y en cyusb30_def.h y soluciono varias cosas.
 *OVERLAPPED es una estructura que no esta definida y la precisa CyAPI.h.
 *Baje la biblioteca <shobjid.h> y la puse en el path de MinGW/include, y la llame desde CyAPI.h
 *Tambien la tiene el header <windows.h>
 *
