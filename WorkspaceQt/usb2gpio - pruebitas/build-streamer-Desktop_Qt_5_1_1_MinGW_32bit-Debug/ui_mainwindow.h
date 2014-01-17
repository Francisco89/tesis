/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.1.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPlainTextEdit>
#include <QtWidgets/QProgressBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolBar>
#include <QtWidgets/QWidget>

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
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(390, 367);
        QIcon icon;
        icon.addFile(QStringLiteral("CY.ico"), QSize(), QIcon::Normal, QIcon::Off);
        MainWindow->setWindowIcon(icon);
        MainWindow->setAnimated(true);
        centralWidget = new QWidget(MainWindow);
        centralWidget->setObjectName(QStringLiteral("centralWidget"));
        Endpoint_label = new QLabel(centralWidget);
        Endpoint_label->setObjectName(QStringLiteral("Endpoint_label"));
        Endpoint_label->setEnabled(true);
        Endpoint_label->setGeometry(QRect(20, 11, 81, 20));
        Start_pushButton = new QPushButton(centralWidget);
        Start_pushButton->setObjectName(QStringLiteral("Start_pushButton"));
        Start_pushButton->setGeometry(QRect(250, 140, 121, 25));
        Start_pushButton->setAutoFillBackground(false);
        Throughput_groupBox = new QGroupBox(centralWidget);
        Throughput_groupBox->setObjectName(QStringLiteral("Throughput_groupBox"));
        Throughput_groupBox->setGeometry(QRect(20, 170, 350, 60));
        progressBar = new QProgressBar(Throughput_groupBox);
        progressBar->setObjectName(QStringLiteral("progressBar"));
        progressBar->setGeometry(QRect(20, 25, 300, 18));
        progressBar->setMaximum(500000);
        progressBar->setValue(0);
        CPU_Load_groupBox = new QGroupBox(centralWidget);
        CPU_Load_groupBox->setObjectName(QStringLiteral("CPU_Load_groupBox"));
        CPU_Load_groupBox->setGeometry(QRect(20, 247, 350, 60));
        progressBar_2 = new QProgressBar(CPU_Load_groupBox);
        progressBar_2->setObjectName(QStringLiteral("progressBar_2"));
        progressBar_2->setGeometry(QRect(20, 25, 300, 18));
        progressBar_2->setMaximum(100);
        progressBar_2->setValue(0);
        Endpoint_comboBox = new QComboBox(centralWidget);
        Endpoint_comboBox->setObjectName(QStringLiteral("Endpoint_comboBox"));
        Endpoint_comboBox->setGeometry(QRect(100, 10, 271, 22));
        Endpoint_comboBox_2 = new QComboBox(centralWidget);
        Endpoint_comboBox_2->setObjectName(QStringLiteral("Endpoint_comboBox_2"));
        Endpoint_comboBox_2->setGeometry(QRect(100, 59, 71, 22));
        Packets_per_Xfer_Label = new QLabel(centralWidget);
        Packets_per_Xfer_Label->setObjectName(QStringLiteral("Packets_per_Xfer_Label"));
        Packets_per_Xfer_Label->setEnabled(true);
        Packets_per_Xfer_Label->setGeometry(QRect(20, 60, 81, 20));
        Endpoint_comboBox_3 = new QComboBox(centralWidget);
        Endpoint_comboBox_3->setObjectName(QStringLiteral("Endpoint_comboBox_3"));
        Endpoint_comboBox_3->setGeometry(QRect(100, 100, 71, 22));
        Xfer_to_Queue_Label = new QLabel(centralWidget);
        Xfer_to_Queue_Label->setObjectName(QStringLiteral("Xfer_to_Queue_Label"));
        Xfer_to_Queue_Label->setEnabled(true);
        Xfer_to_Queue_Label->setGeometry(QRect(20, 100, 81, 20));
        Successes_label = new QLabel(centralWidget);
        Successes_label->setObjectName(QStringLiteral("Successes_label"));
        Successes_label->setEnabled(true);
        Successes_label->setGeometry(QRect(200, 60, 71, 20));
        Failures_label = new QLabel(centralWidget);
        Failures_label->setObjectName(QStringLiteral("Failures_label"));
        Failures_label->setEnabled(true);
        Failures_label->setGeometry(QRect(200, 100, 71, 20));
        Successes_plainTextEdit = new QPlainTextEdit(centralWidget);
        Successes_plainTextEdit->setObjectName(QStringLiteral("Successes_plainTextEdit"));
        Successes_plainTextEdit->setGeometry(QRect(270, 59, 100, 25));
        Failures_plainTextEdit = new QPlainTextEdit(centralWidget);
        Failures_plainTextEdit->setObjectName(QStringLiteral("Failures_plainTextEdit"));
        Failures_plainTextEdit->setGeometry(QRect(270, 100, 100, 25));
        MainWindow->setCentralWidget(centralWidget);
        mainToolBar = new QToolBar(MainWindow);
        mainToolBar->setObjectName(QStringLiteral("mainToolBar"));
        MainWindow->addToolBar(Qt::TopToolBarArea, mainToolBar);
        statusBar = new QStatusBar(MainWindow);
        statusBar->setObjectName(QStringLiteral("statusBar"));
        MainWindow->setStatusBar(statusBar);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QStringLiteral("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 390, 21));
        MainWindow->setMenuBar(menuBar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "Streamer", 0));
        Endpoint_label->setText(QApplication::translate("MainWindow", "Endpoint", 0));
        Start_pushButton->setText(QApplication::translate("MainWindow", "Start", 0));
        Throughput_groupBox->setTitle(QApplication::translate("MainWindow", "Throughput (KB/s)", 0));
        progressBar->setFormat(QApplication::translate("MainWindow", "%p%", 0));
        CPU_Load_groupBox->setTitle(QApplication::translate("MainWindow", "CPU Load", 0));
        progressBar_2->setFormat(QApplication::translate("MainWindow", "%v%", 0));
        Packets_per_Xfer_Label->setText(QApplication::translate("MainWindow", "Packts per Xfer", 0));
        Xfer_to_Queue_Label->setText(QApplication::translate("MainWindow", "Xfers to Queue", 0));
        Successes_label->setText(QApplication::translate("MainWindow", "Successes", 0));
        Failures_label->setText(QApplication::translate("MainWindow", "Failures", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
