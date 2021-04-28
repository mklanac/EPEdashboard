import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls"
import QtQuick.Layouts 1.0
import QtCharts 2.3

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
                text: qsTr("Snimanje krivulje magnetiziranja")
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 12
            }
        }

        Rectangle {
            id: rectangleData
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

            Table{
                height: 0.9 * rectangleData.height
                anchors.left: parent.left
                anchors.right: parent.horizontalCenter
                anchors.top: parent.top
                anchors.rightMargin: 10
                anchors.topMargin: 10
                anchors.leftMargin: 10 // resize

                headerModel: [ // widths must add to 1
                    {text: 'Uzbudna struja',         width: 0.5},
                    {text: 'Armaturni napon',   width: 0.5},
                ]

                dataModel: [
                    ['Red',   '#ff0000'],
                    ['Green', '#00ff00'],
                    ['Blue',  '#0000ff'],
                    ['Red',   '#ff0000'],
                    ['Green', '#00ff00'],
                    ['Blue',  '#0000ff'],
                    ['Red',   '#ff0000'],
                    ['Green', '#00ff00'],
                    ['Blue',  '#0000ff'],
                    ['Red',   '#ff0000'],
                    ['Green', '#00ff00'],
                    ['Blue',  '#0000ff'],
                    ['Red',   '#ff0000'],
                    ['Green', '#00ff00'],
                    ['Blue',  '#0000ff'],
                    ['Red',   '#ff0000'],
                    ['Green', '#00ff00'],
                    ['Blue',  '#0000ff'],
                    ['Red',   '#ff0000'],
                    ['Green', '#00ff00'],
                    ['Blue',  '#0000ff'],
                ]

                onClicked: print('onClicked', row, JSON.stringify(rowData))
            }

            ChartView {
                id: chartView
                anchors.left: parent.horizontalCenter
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                plotAreaColor: "#00000000"
                backgroundColor: "#00000000"
                titleColor: "#ffffff"
                anchors.topMargin: 10
                anchors.bottomMargin: 10
                anchors.leftMargin: 10
                anchors.rightMargin: 0
                title: "Krivulja magnetiziranja"
                antialiasing: true

                ValueAxis{
                    id: axisX
                    min: 0
                    max: 5
                }


                ValueAxis{
                    id: axisY
                    min: 0
                    max: 5
                }

                LineSeries {
                    name: "Ua = f(Iu)"
                    pointLabelsColor: "#ffffff"
                    axisX: axisX
                    axisY: axisY
                    XYPoint { x: 0; y: 0 }
                    XYPoint { x: 1.1; y: 2.1 }
                    XYPoint { x: 1.9; y: 3.3 }
                    XYPoint { x: 2.1; y: 2.1 }
                    XYPoint { x: 2.9; y: 4.9 }
                    XYPoint { x: 3.4; y: 3.0 }
                    XYPoint { x: 4.1; y: 3.3 }
                }

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
            rectangleData.visible = isVisible
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.25;height:480;width:640}D{i:5}
}
##^##*/
