#-------------------------------------------------
#
# Project created by QtCreator 2013-11-11T09:44:19
#
#-------------------------------------------------

QT       += core

QT       -= gui


MAKE_CXXFLAGS += -fopenmp

QMAKE_LFLAGS *= -fopenmp

TARGET = Test
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += main.cpp
