#include "mainwindow.h"
#include <QApplication>


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
//    QWidget::setWindowIcon(QIcon("logo_fiuba.ico"));
    w.show();

    return a.exec();
}
