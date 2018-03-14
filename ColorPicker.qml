import QtQuick 2.0
import QtQuick.Controls 1.2

/*
自定义组件，单独文件中
*/
Rectangle {
    id:colorPicker;
    width:50;
    height:30;
    signal colorPicked(color clr); //自定义信号

    function configureBorder() {  //设置边框宽度和颜色
        colorPicker.border.width = colorPicker.focus ? 2 : 0;
        colorPicker.border.color = colorPicker.focus ? "#90D750" : "#808080";
    }

    MouseArea {
        anchors.fill: parent;
        onClicked: {
            colorPicker.colorPicked(colorPicker.color);
            mouse.accepted = true;
            colorPicker.focus = true;
        }
    }

    Keys.onReturnPressed: {
        colorPicker.colorPicked(colorPicker.color);
        event.accepted = true;
    }

    Keys.onSpacePressed: {
        colorPicker.colorPicked(colorPicker.color);
        event.accepted = true;
    }

    onFocusChanged: {
        configureBorder();
    }

    Component.onCompleted: {
        configureBorder();
    }
}
