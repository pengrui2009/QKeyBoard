#-------------------------------------------------
#
# Project created by QtCreator 2021-07-27T15:10:03
#
#-------------------------------------------------

QT       += core gui gui-private

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QKeyBoard
TEMPLATE = app

DESTDIR = bin
# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/keyboardAll/pinyin/ -lgooglepinyin
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/keyboardAll/pinyin/ -lgooglepinyind

#INCLUDEPATH += $$PWD/keyboardAll/pinyin
#DEPENDPATH += $$PWD/keyboardAll/pinyin

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp \
        keyboardAll/googlepinyin/dictbuilder.cpp \
        keyboardAll/googlepinyin/dictlist.cpp \
        keyboardAll/googlepinyin/dicttrie.cpp \
        keyboardAll/googlepinyin/lpicache.cpp \
        keyboardAll/googlepinyin/matrixsearch.cpp \
        keyboardAll/googlepinyin/mystdlib.cpp \
        keyboardAll/googlepinyin/ngram.cpp \
        keyboardAll/googlepinyin/pinyinime.cpp \
        keyboardAll/googlepinyin/searchutility.cpp \
        keyboardAll/googlepinyin/spellingtable.cpp \
        keyboardAll/googlepinyin/spellingtrie.cpp \
        keyboardAll/googlepinyin/splparser.cpp \
        keyboardAll/googlepinyin/sync.cpp \
        keyboardAll/googlepinyin/userdict.cpp \
        keyboardAll/googlepinyin/utf16char.cpp \
        keyboardAll/googlepinyin/utf16reader.cpp \
        keyboardAll/googlepinyin.cpp \
        keyboardAll/inputcontext.cpp \
        keyboardAll/keyboardform.cpp \
        keyboardAll/keyeventdispatcher.cpp \
        keyboardAll/qlineeditallkeyboard.cpp

HEADERS += \
        mainwindow.h \
        keyboardAll/googlepinyin/atomdictbase.h \
        keyboardAll/googlepinyin/dictbuilder.h \
        keyboardAll/googlepinyin/dictdef.h \
        keyboardAll/googlepinyin/dictlist.h \
        keyboardAll/googlepinyin/dicttrie.h \
        keyboardAll/googlepinyin/lpicache.h \
        keyboardAll/googlepinyin/matrixsearch.h \
        keyboardAll/googlepinyin/mystdlib.h \
        keyboardAll/googlepinyin/ngram.h \
        keyboardAll/googlepinyin/pinyinime.h \
        keyboardAll/googlepinyin/searchutility.h \
        keyboardAll/googlepinyin/spellingtable.h \
        keyboardAll/googlepinyin/spellingtrie.h \
        keyboardAll/googlepinyin/splparser.h \
        keyboardAll/googlepinyin/sync.h \
        keyboardAll/googlepinyin/userdict.h \
        keyboardAll/googlepinyin/utf16char.h \
        keyboardAll/googlepinyin/utf16reader.h \
        keyboardAll/googlepinyin.h \
        keyboardAll/inputcontext.h \
        keyboardAll/keyboardform.h \
        keyboardAll/keyeventdispatcher.h \
        keyboardAll/qlineeditallkeyboard.h

FORMS += \
        mainwindow.ui

# Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target

#####原文件文件路径#######
#target.path += $$PWD/resources/dict \
#               $$PWD/resources/images \
#               $$PWD/resources/font

file.files += $$PWD/resources/dict/dict_pinyin.dat
#####需要拷贝到的目标路径，编译时会将example.h拷贝到$$OUT_PWD中#######
file.path = $$OUT_PWD/
message("found files for copytarget: "$$file.path)
INSTALLS += file

