import QtQuick 2.0

Rectangle {

    width:320;
    height:240;
    color: "#eeeeee";
    id: rootItem;

    Rectangle {
        id:rect;
        width: 50;
        height:150;
        color:"blue";
        anchors.centerIn: parent;

        MouseArea {
            anchors.fill: parent;
            id:mouseArea;
        }

        PropertyAnimation on width {
            to: 150;
            duration: 1500;
            running: mouseArea.pressed;
        }
    }
}
