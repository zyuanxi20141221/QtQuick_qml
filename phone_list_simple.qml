import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Rectangle {
    width:480;
    height:320;
    color:"#EEEEEE";

    Component {
        id:phoneDelegate;
        Item {
            id:wrapper;
            width:parent.width;
            height:30;

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                   wrapper.ListView.view.currentIndex = index;
                }
            }

            RowLayout {
                anchors.left: parent.left;
                anchors.verticalCenter: parent.verticalCenter;
                spacing: 8;

                Text {
                    text:name;
                    color:wrapper.ListView.isCurrentItem ? "red" : "black";
                    font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                    Layout.preferredWidth: 120;
                }

                Text {
                    text:cost;
                    color:wrapper.ListView.isCurrentItem ? "red" : "black";
                    font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                    Layout.preferredWidth: 80;
                }

                Text {
                    text:manufacturer;
                    color:wrapper.ListView.isCurrentItem ? "red" : "black";
                    font.pixelSize: wrapper.ListView.isCurrentItem ? 22 : 18;
                    Layout.fillWidth: true;
                }
            }
        }
    }

    ListView {
        id:listView;
        anchors.fill: parent;
        delegate: phoneDelegate;
        model: ListModel {
            id:phoneModel;
            ListElement {
                name: "IPhone 3gs";
                cost:1000;
                manufacturer:"Apple";
            }

            ListElement {
                name: "IPhone 4";
                cost:1800;
                manufacturer:"Apple";
            }

            ListElement {
                name: "IPhone 4s";
                cost:2300;
                manufacturer:"Apple";
            }

            ListElement {
                name: "IPhone 6";
                cost:3300;
                manufacturer:"Apple";
            }

            ListElement {
                name: "IPhone 6s";
                cost:4300;
                manufacturer:"Apple";
            }

            ListElement {
                name: "IPhone 7";
                cost:4800;
                manufacturer:"Apple";
            }

            ListElement {
                name: "MI 6";
                cost:2300;
                manufacturer:"MI";
            }
        }

        focus: true;
        highlight: Rectangle {
            color:"lightblue";
        }
    }
}
