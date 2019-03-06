import QtQuick 2.10
import QtQuick.Controls 2.3

Rectangle {
    id: root
    width: 1040
    height: 800
    color: "#f1f1f1"

    Text {
        id: headText
        width: root.width-32
        height: 46
        anchors.left: root.left
        anchors.leftMargin: 16
        text: qsTr(" [-] HTTP请求")
        color: "#000000"
        font.pixelSize: 20
        verticalAlignment: Text.AlignVCenter
    }


    Rectangle {
        id: headRectangle
        width: root.width-32
        height: 50
        anchors.left: root.left
        anchors.leftMargin: 16
        anchors.top: headText.bottom
        color: "#ffffff"
        radius: 3

        Text {
            id: vueText
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 14
            text: "请求方法"
            color: "#000000"
        }

        ComboBox {
            id: vueComboBox
            width: 150
            height: 34
            anchors.left: vueText.right
            anchors.leftMargin: 10
            anchors.verticalCenter: headRectangle.verticalCenter
            model: ["GET", "POST"]
        }

        Text {
            id: urlText
            anchors.left: vueComboBox.right
            anchors.leftMargin: 20
            anchors.verticalCenter: headRectangle.verticalCenter
            font.pixelSize: 14
            text: "网址"
            color: "#000000"
        }

        Rectangle {
            id: urlRectangle
            width: 612
            height: 34
            anchors.left: urlText.right
            anchors.leftMargin: 10
            anchors.verticalCenter: headRectangle.verticalCenter
            border.width: 1
            border.color: "#d92305"
            radius: 3



            TextInput {
                id: urlTextInput
                width: urlRectangle.width - 10
                anchors.horizontalCenter: urlRectangle.horizontalCenter
                anchors.verticalCenter: urlRectangle.verticalCenter

                text: "Text"
                cursorVisible: false
                selectByMouse: true
            }
        }


        Rectangle {
            id: sendRectangle
            width: 80
            height: 34
            anchors.left: urlRectangle.right
            anchors.leftMargin: 8
            anchors.verticalCenter: headRectangle.verticalCenter
            color: "#d92305"
            radius: 3

            Text {
                anchors.centerIn: parent
                text: "发送"
                font.pixelSize: 14
                color: "#ffffff"
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor


            }
        }

    }


}
