#-------------------------------------------------
#
# Project created by QtCreator 2013-12-03T20:36:27
#
#-------------------------------------------------

QT += core gui


include(Common/common.pri)
include(Controllers/controllers.pri)
include(Views/views.pri)
include(QRS_CLASS/qrs_class.pri)
include(QsLog/QsLog.pri)
include(ECG_BASELINE/ecg_baseline.pri)
include(ATRIAL_FIBR/atrial_fibr.pri)
include(ST_INTERVAL/st_interval.pri)
include(HRV1/hrv1.pri)
include(R_PEAKS/RPeaks.pri)
include(Waves/waves.pri)

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = EKG
TEMPLATE = app


SOURCES += main.cpp

INCLUDEPATH += Include

QMAKE_CXXFLAGS += -std=c++0x

LIBS += -L$$PWD/R_PEAKS/fourier/ -llibfftw3-3
