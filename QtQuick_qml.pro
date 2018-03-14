TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    my_signal.qml \
    handle_mouse.qml \
    countdown.qml \
    ColorPicker.qml \
    component_file.qml \
    row.qml \
    colomun.qml \
    grid.qml
