import QtQuick 2.0

Rectangle {

    width:360;
    height:240;
    color: "#eeeeee";
    id: rootItem;

    Rectangle {
        id:rect;
        width:50;
        height:50;
        color:"blue";
        x: 0;
        y: 95;

        MouseArea {
            id: mouseArea;
            anchors.fill: parent;
            onClicked: {
                animationX.start();
                animationRotation.running = true;
                animationRadius.start();
            }
        }

        NumberAnimation {
            id:animationX;
            target: rect;
            property: "x";
            to: 310;
            duration: 3000;
            easing.type: Easing.OutCubic;
        }

        NumberAnimation {
            id:animationRotation;
            target: rect;
            to: 1080;
            property: "rotation";
            duration: 3000;
            running: false;
            easing.type: Easing.OutInCubic;
        }

        NumberAnimation on radius {
            id: animationRadius;
            to: 25;
            duration: 3000;
            running: false;
        }
    }
}
