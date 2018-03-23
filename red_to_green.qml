import QtQuick 2.0

Rectangle {
    width:320;
    height:240;
    color: "#EEEEEE";

    Rectangle {
        id:rect;
        width:60;
        height:60;
        color: "red";
        anchors.centerIn: parent;

        MouseArea {
            id:mouseArea;
            anchors.fill: parent;
            onClicked:
                ColorAnimation {
                target: rect;
                property: "color";
                to: "green";
                duration: 1500;
            }
        }
    }
}
