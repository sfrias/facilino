QT += core gui serialport widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets webkit webkitwidgets

TARGET = facilino
TEMPLATE = app

SOURCES += main.cpp\
        mainwindow.cpp \
    settingsdialog.cpp \
    settingsstore.cpp \
    graphwidget.cpp \
    aboutdialog.cpp \
    jswebhelpers.cpp \
    qblockswebview.cpp

HEADERS += mainwindow.h \
    settingsdialog.h \
    settingsstore.h \
    graphwidget.h \
    aboutdialog.h \
    jswebhelpers.h \
    qblockswebview.h

FORMS += mainwindow.ui \
    settingsdialog.ui \
    aboutdialog.ui

OTHER_FILES += ../config.ini ../ts/*.ts ../html/* ../icons/*

RESOURCES += Resources.qrc

DESTDIR = $${OUT_PWD}
INSTALLS_DESTDIR = $${DESTDIR}

macx {
  INSTALLS_DESTDIR = $${OUT_PWD}/facilino.app/Contents/MacOS/
  ICON = ../icons/facilino.icns
}

config.path = $${INSTALLS_DESTDIR}
config.files = ../config.ini

html.path = $${INSTALLS_DESTDIR}/html
html.files = ../html/*

examples.path = $${INSTALLS_DESTDIR}/examples
examples.files = ../roboblocks/examples/*

translation.path = $${INSTALLS_DESTDIR}/ts
translation.files = ../ts/*.qm

INSTALLS += config examples html translation
