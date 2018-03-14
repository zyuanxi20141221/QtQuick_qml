import QtQuick 2.2

Rectangle {
    width:320;
    height:240;
    color:"#EEEEEE";

    Text {
        id:colorText;
        anchors.top: parent.top;
        anchors.topMargin: 4;
        anchors.horizontalCenter: parent.horizontalCenter;
        text: "Qt Quick!";
        font.pixelSize: 32;
    }

    function setTextColor(clr)
    {
        colorText.color = clr;
    }

    ColorPicker {
        id:redColor;
        color:"red";
        focus:true;
        anchors.left: parent.left;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        KeyNavigation.right: blueColor;
        KeyNavigation.tab: blueColor;
        onColorPicked: { //信号处理器
            setTextColor(clr);
        }
    }

    ColorPicker {
        id:blueColor;
        color:"blue";
        focus:true;
        anchors.left: redColor.right;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        KeyNavigation.right: pinkColor;
        KeyNavigation.left: redColor;
        KeyNavigation.tab: pinkColor;
    }

    ColorPicker {
        id:pinkColor;
        color:"pink";
        focus:true;
        anchors.left: blueColor.right;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        KeyNavigation.left: blueColor;
        KeyNavigation.tab: redColor;
    }

    Component.onCompleted: { //signal对象的connect连接到指定的方法上
        blueColor.colorPicked.connect(setTextColor);
        pinkColor.colorPicked.connect(setTextColor);
    }
}
