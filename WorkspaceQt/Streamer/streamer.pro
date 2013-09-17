#-------------------------------------------------
#
# Project created by QtCreator 2013-08-26T10:56:47
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = streamer
TEMPLATE = app

INCLUDEPATH += "C:\Cypress\EZ-USB FX3 SDK\1.2\library\cpp\lib\x86"

SOURCES  += main.cpp\
         mainwindow.cpp\

HEADERS  += mainwindow.h\
         CyAPI.h\                            #Para controlar el driver
         Pasos.h

FORMS    += mainwindow.ui

win32:RC_FILE = mis_recursos.rc
#RESOURCES += mis_recursos.rc

OTHER_FILES +=
