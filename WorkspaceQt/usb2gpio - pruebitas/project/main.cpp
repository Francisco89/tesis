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

    w.show();
    return a.exec();
}
