import QtQuick 2.0
import QtQuick.Controls 1.2
/*
  定时器
*/
Rectangle {
    width:320;
    height:240;
    color: "gray";

    QtObject {
        id:attrs;
        property int counter;
        Component.onCompleted: {
            attrs.counter = 10;
        }
    }

    Text {
        id:countShow;
        anchors.centerIn: parent;
        color:"blue";
        font.pixelSize: 40;
    }

    Timer {
        id:countDown;
        repeat: true;
        triggeredOnStart: true;
        interval: 100;
        onTriggered: {
            countShow.text = attrs.counter;
            attrs.counter-=1;
            if(attrs.counter < 0) {
                countDown.stop();
                countShow.text = "Clap Now!";
            }
        }
    }

    Button {
        id:startButton;
        anchors.top: countShow.bottom;
        anchors.topMargin: 40;
        anchors.horizontalCenter: parent.horizontalCenter;
        text:"start";
        onClicked: {
            attrs.counter = 100;
            countDown.start();
        }
    }
}
