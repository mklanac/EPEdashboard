import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls"
import QtQuick.Layouts 1.0

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Rectangle {
            id: rectangleTop
            height: 69
            color: "#495163"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 40

            Label {
                id: labelDate1
                y: 31
                height: 25
                color: "#55aaff"
                text: qsTr("Spojite krug prema shemi. Napomena:")
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 12
            }
        }

        Rectangle {
            id: rectangleVisible
            color: "#1d2128"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangleTop.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 10

            Image {
                id: image
                anchors.fill: parent
                source: "LV1/shema.png"
                anchors.bottomMargin: 30
                anchors.topMargin: 30
                anchors.rightMargin: 20
                anchors.leftMargin: 30
                layer.smooth: true
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    Connections{
        target: backend

        function onSetName(name){
            labelTextName.text = name
        }

        function onPrintTime(time){
            labelDate.text = time
        }

        function onIsVisible(isVisible){
            rectangleVisible.visible = isVisible
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}D{i:5}
}
##^##*/
