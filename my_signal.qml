import QtQuick 2.0
import QtQuick.Controls 1.2

/*
自定义信号
*/
Rectangle {
    width:320;
    height:240;
    color:"#c0c0c0";

    Text {
        id:coloredText;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 4;
        text:"Qt Quick";
        font.pixelSize: 32;
    }

    Component {  //自定义组件
        id:colorComponent;
        Rectangle {
            id:colorPicker;
            width:50;
            height:30;
            signal colorPicked(color clr); //自定义信号
            MouseArea {
                anchors.fill: parent;
                onPressed: {
                    colorPicker.colorPicked(colorPicker.color);
                }
            }
        }
    }

    Loader { //动态创建组件
        id:redItem;
        anchors.left: parent.left;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        sourceComponent: colorComponent;
        onLoaded: {
            item.color = "red";
        }
    }

    Loader { //动态创建组件
        id:blueItem;
        anchors.left: redItem.right;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        sourceComponent: colorComponent;
        onLoaded: {
            item.color = "blue";
        }
    }

    Connections {
        target: redItem.item;
        onColorPicked: {
            coloredText.color = clr;
        }
    }

    Connections {
        target: blueItem.item;
        onColorPicked: {
            coloredText.color = clr;
        }
    }

}
