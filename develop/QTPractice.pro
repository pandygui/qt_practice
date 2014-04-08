#-------------------------------------------------
#
# Project created by QtCreator 2014-04-01T09:40:13
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QTPractice
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp\
        dcminformation.cpp \
    savefile.cpp

HEADERS  += mainwindow.h\
        dcminformation.h \
    savefile.h

#DCMTK Lib setings for mac
mac*{
INCLUDEPATH += ../../dcmtk360/include
LIBS +=  "D:\Qt\DCMTK\lib\dcmdata.lib" \
         "D:\Qt\DCMTK\lib\dcmimage.lib" \
         "D:\Qt\DCMTK\lib\dcmimgle.lib" \
         "D:\Qt\DCMTK\lib\ofstd.lib" \
         "D:\Qt\DCMTK\lib\oflog.lib" \
        "C:\Program Files\Microsoft SDKs\Windows\v7.1\Lib\x64\AdvAPI32.Lib" \
        "C:\Program Files\Microsoft SDKs\Windows\v7.1\Lib\x64\WS2_32.Lib" \
        "C:\Program Files\Microsoft SDKs\Windows\v7.1\Lib\x64\netapi32.lib"
}
#DCMTK Lib setings for Linux
unix:!macx{
INCLUDEPATH += ../dcmtk360/include

LIBS +=  -ldcmdata -ldcmimage -ldcmimgle -lofstd -loflog -lz
}
#DCMTK Lib setings for Windows
win32{
INCLUDEPATH += "D:/Qt/DCMTK/include"
    debug {
        LIBS +=  -L"D:\Qt\DCMTK\lib" -ldcmdata -ldcmimage -ldcmimgle -lofstd -loflog \
                 -lAdvAPI32 -lWS2_32 -lnetapi32
    }
    release {
        LIBS +=  -L"D:\Qt\DCMTK\lib-release" -ldcmdata -ldcmimage -ldcmimgle -lofstd -loflog \
                 -lAdvAPI32 -lWS2_32 -lnetapi32
    }
}

FORMS    += \
    mainwindow.ui
