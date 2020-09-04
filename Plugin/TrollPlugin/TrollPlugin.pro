#
#TARGET 代表生成的插件的名字，这里就是 TrollPlugin。
#TEMPLATE 设置为 lib。只要是编写插件，我们的 TEMPLATE 就是 lib。
#DEFINES 代表在编译时添加的宏。这里我们引入一个宏TROLLPLUGIN_LIBRARY，具体作用我们会在后文详细介绍。
#DESTDIR 目的文件夹  设置为 ../../plugins。这里的 .. 是相对于编译输出目录。
#虽然这部分不是必须的，但是这样的设置可以让生成的插件以及主程序在正确的目录下，免得我们手动去复制）。
#DESTDIR = ../../plugins，也就是相对于 TrollPlugin 向上一级的 plugins 目录，即 build/plugins 这个目录。
#MOC_DIR 和 OBJECTS_DIR 指定了 moc 和 .obj 的输出目录，这里不再赘述。
#INCLUDEPATH 说明编译这个工程需要引入 ../App 目录下的头文件，也就是 monsterinterface.h。
#这么做的好处是，我们的主程序和插件共用一个接口头文件，不需要将这个头文件再复制到插件目录。
#最后就是插件所需要的头文件和源代码文件。
#
TARGET = TrollPlugin
TEMPLATE = lib
DEFINES += TROLLPLUGIN_LIBRARY

CONFIG += c++11

DESTDIR = ../../plugins

MOC_DIR     = trollplugin
OBJECTS_DIR = trollplugin

INCLUDEPATH += ../../App
# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    trollplugin.cpp

HEADERS += \
    TrollPlugin_global.h \
    trollplugin.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
