#-------------------------------------------------
#
# Project created by QtCreator 2013-09-17T17:55:52
#
#-------------------------------------------------

QT       -= gui

TARGET = CyAPI
TEMPLATE = lib

DEFINES += CYAPI_LIBRARY
CONFIG  += dll

SOURCES += \
    CyAPI.cpp

HEADERS += \
    CyAPI.h \
    VersionNo.h \
    UsbdStatus.h \
    usb200.h \
    usb100.h \
    devioctl.h \
    CyUSB30_def.h \
    cyioctl.h \
    CyAPI_global.h

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}
#INCLUDEPATH += C:\mingw\lib
LIBS += -lSetupApi # -Lsetupapi
#LIBS += -Lsetupapi

