#include "mainwindow.h"
#include <QApplication>
#include <CyAPI.h>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;

    CCyUSBDevice *MyDevice = new CCyUSBDevice(NULL);
    //CCyUSBEndPoint EndPoint;

//    QWidget::setWindowIcon(QIcon("logo_fiuba.ico"));
    w.show();


    return a.exec();
}
