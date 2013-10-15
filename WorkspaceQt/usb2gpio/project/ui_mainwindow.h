/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created: Mon 7. Oct 10:14:50 2013
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QComboBox>
#include <QtGui/QGroupBox>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QMainWindow>
#include <QtGui/QMenuBar>
#include <QtGui/QPlainTextEdit>
#include <QtGui/QProgressBar>
#include <QtGui/QPushButton>
#include <QtGui/QStatusBar>
#include <QtGui/QToolBar>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralWidget;
    QLabel *Endpoint_label;
    QPushButton *Start_pushButton;
    QGroupBox *Throughput_groupBox;
    QProgressBar *progressBar;
    QGroupBox *CPU_Load_groupBox;
    QProgressBar *progressBar_2;
    QComboBox *Endpoint_comboBox;
    QComboBox *Endpoint_comboBox_2;
    QLabel *Packets_per_Xfer_Label;
    QComboBox *Endpoint_comboBox_3;
    QLabel *Xfer_to_Queue_Label;
    QLabel *Successes_label;
    QLabel *Failures_label;
    QPlainTextEdit *Successes_plainTextEdit;
    QPlainTextEdit *Failures_plainTextEdit;
    QToolBar *mainToolBar;
    QStatusBar *statusBar;
    QMenuBar *menuBar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(390, 367);
        QIcon icon;
        icon.addFile(QString::fromUtf8("CY.ico"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindow->setWindowIcon(icon);
        MainWindow->setAnimated(true);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QString::fromUtf8("centralWidget"));
        Endpoint_label = new QLabel(centralWidget);
        Endpoint_label->setObjectName(QString::fromUtf8("Endpoint_label"));
        Endpoint_label->setEnabled(true);
        Endpoint_label->setGeometry(QRect(20, 11, 81, 20));
        Start_pushButton = new QPushButton(centralWidget);
        Start_pushButton->setObjectName(QString::fromUtf8("Start_pushButton"));
        Start_pushButton->setGeometry(QRect(250, 140, 121, 25));
        Start_pushButton->setAutoFillBackground(false);
        Throughput_groupBox = new QGroupBox(centralWidget);
        Throughput_groupBox->setObjectName(QString::fromUtf8("Throughput_groupBox"));
        Throughput_groupBox->setGeometry(QRect(20, 170, 350, 60));
        progressBar = new QProgressBar(Throughput_groupBox);
        progressBar->setObjectName(QString::fromUtf8("progressBar"));
        progressBar->setGeometry(QRect(20, 25, 300, 18));
        progressBar->setMaximum(500000);
        progressBar->setValue(0);
        CPU_Load_groupBox = new QGroupBox(centralWidget);
        CPU_Load_groupBox->setObjectName(QString::fromUtf8("CPU_Load_groupBox"));
        CPU_Load_groupBox->setGeometry(QRect(20, 247, 350, 60));
        progressBar_2 = new QProgressBar(CPU_Load_groupBox);
        progressBar_2->setObjectName(QString::fromUtf8("progressBar_2"));
        progressBar_2->setGeometry(QRect(20, 25, 300, 18));
        progressBar_2->setMaximum(100);
        progressBar_2->setValue(0);
        Endpoint_comboBox = new QComboBox(centralWidget);
        Endpoint_comboBox->setObjectName(QString::fromUtf8("Endpoint_comboBox"));
        Endpoint_comboBox->setGeometry(QRect(100, 10, 271, 22));
        Endpoint_comboBox_2 = new QComboBox(centralWidget);
        Endpoint_comboBox_2->setObjectName(QString::fromUtf8("Endpoint_comboBox_2"));
        Endpoint_comboBox_2->setGeometry(QRect(100, 59, 71, 22));
        Packets_per_Xfer_Label = new QLabel(centralWidget);
        Packets_per_Xfer_Label->setObjectName(QString::fromUtf8("Packets_per_Xfer_Label"));
        Packets_per_Xfer_Label->setEnabled(true);
        Packets_per_Xfer_Label->setGeometry(QRect(20, 60, 81, 20));
        Endpoint_comboBox_3 = new QComboBox(centralWidget);
        Endpoint_comboBox_3->setObjectName(QString::fromUtf8("Endpoint_comboBox_3"));
        Endpoint_comboBox_3->setGeometry(QRect(100, 100, 71, 22));
        Xfer_to_Queue_Label = new QLabel(centralWidget);
        Xfer_to_Queue_Label->setObjectName(QString::fromUtf8("Xfer_to_Queue_Label"));
        Xfer_to_Queue_Label->setEnabled(true);
        Xfer_to_Queue_Label->setGeometry(QRect(20, 100, 81, 20));
        Successes_label = new QLabel(centralWidget);
        Successes_label->setObjectName(QString::fromUtf8("Successes_label"));
        Successes_label->setEnabled(true);
        Successes_label->setGeometry(QRect(200, 60, 71, 20));
        Failures_label = new QLabel(centralWidget);
        Failures_label->setObjectName(QString::fromUtf8("Failures_label"));
        Failures_label->setEnabled(true);
        Failures_label->setGeometry(QRect(200, 100, 71, 20));
        Successes_plainTextEdit = new QPlainTextEdit(centralWidget);
        Successes_plainTextEdit->setObjectName(QString::fromUtf8("Successes_plainTextEdit"));
        Successes_plainTextEdit->setGeometry(QRect(270, 59, 100, 25));
        Failures_plainTextEdit = new QPlainTextEdit(centralWidget);
        Failures_plainTextEdit->setObjectName(QString::fromUtf8("Failures_plainTextEdit"));
        Failures_plainTextEdit->setGeometry(QRect(270, 100, 100, 25));
        MainWindow->setCentralWidget(centralWidget);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QString::fromUtf8("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QString::fromUtf8("statusBar"));
        MainWindow->setStatusBar(statusBar);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 390, 21));
        MainWindow->setMenuBar(menuBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "Streamer", 0, QApplication::UnicodeUTF8));
        Endpoint_label->setText(QApplication::translate("MainWindow", "Endpoint", 0, QApplication::UnicodeUTF8));
        Start_pushButton->setText(QApplication::translate("MainWindow", "Start", 0, QApplication::UnicodeUTF8));
        Throughput_groupBox->setTitle(QApplication::translate("MainWindow", "Throughput (KB/s)", 0, QApplication::UnicodeUTF8));
        progressBar->setFormat(QApplication::translate("MainWindow", "%p%", 0, QApplication::UnicodeUTF8));
        CPU_Load_groupBox->setTitle(QApplication::translate("MainWindow", "CPU Load", 0, QApplication::UnicodeUTF8));
        progressBar_2->setFormat(QApplication::translate("MainWindow", "%v%", 0, QApplication::UnicodeUTF8));
        Packets_per_Xfer_Label->setText(QApplication::translate("MainWindow", "Packts per Xfer", 0, QApplication::UnicodeUTF8));
        Xfer_to_Queue_Label->setText(QApplication::translate("MainWindow", "Xfers to Queue", 0, QApplication::UnicodeUTF8));
        Successes_label->setText(QApplication::translate("MainWindow", "Successes", 0, QApplication::UnicodeUTF8));
        Failures_label->setText(QApplication::translate("MainWindow", "Failures", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
