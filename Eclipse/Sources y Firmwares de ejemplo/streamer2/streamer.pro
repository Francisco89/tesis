#-------------------------------------------------
#
# Project created by QtCreator 2013-08-26T10:56:47
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = streamer
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h


FORMS    += mainwindow.ui

win32:RC_FILE = mis_recursos.rc
#RESOURCES += mis_recursos.rc

INCLUDEPATH += C:\workspace\qt\CyAPI\CyAPI
LIBS += C:\workspace\qt\CyAPI\Release\release\libcyapi.a
