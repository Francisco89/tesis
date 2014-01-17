#-------------------------------------------------
#
# Project created by QtCreator 2013-11-13T16:46:18
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = streamer_nuevo
TEMPLATE = app


QMAKE_LFLAGS += -fopenmp
QMAKE_CXXFLAGS += -fopenmp


SOURCES += main.cpp\
        widget.cpp\

HEADERS  += widget.h \
            main.h \

FORMS    += widget.ui


win32:RC_FILE = mis_recursos.rc
#RESOURCES += mis_recursos.rc

INCLUDEPATH += C:\Users\x\tesis\WorkspaceQt\CyAPI\CyAPI
LIBS += -lcyapi
