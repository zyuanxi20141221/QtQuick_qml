import QtQuick 2.0

/*
处理鼠标事件
*/
Rectangle {
    width:320;
    height: 240;

    MouseArea {
        anchors.fill: parent;
        acceptedButtons: Qt.LeftButton | Qt.RightButton;
        onClicked: {
            if(mouse.button === Qt.RightButton) {
                Qt.quit();
            } else if(mouse.button === Qt.LeftButton) {
                color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
            }
        }
        onDoubleClicked: {
            color = "gray";
        }
    }
}
