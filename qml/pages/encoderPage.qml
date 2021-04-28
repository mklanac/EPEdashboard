import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0
import "../controls"

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0


        Rectangle {
            id: rectangleTop
            height: rectangle.height*0.3
            color: "#1d2128"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 40


            AnimatedImage {
                id: animatedImage
                anchors.fill: parent
                source: "../../3Dmodels/Video/rotation.gif"
                speed: 0
                anchors.bottomMargin: 15
                fillMode: Image.PreserveAspectFit
                playing: true
            }
        }

        Rectangle {
            id: rectangleInfo
            x: 50
            width: 35
            height: 35
            color: "#1d2128"
            radius: 15
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 10
            anchors.topMargin: 10

            RoundButton {
                id: roundButton
                text: "?"
                anchors.fill: parent
                checkable: true
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                anchors.bottomMargin: 5
                anchors.topMargin: 5
                onCheckedChanged: {
                    if(roundButton.checked){
                        rectangleVisible.visible = true
                    }else{
                        rectangleVisible.visible = false
                    }
                }
            }



        }

        Rectangle {
            id: rectangleSpeedEncoder
            visible: true
            color: "#1d2128"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangleTop.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 10

            Speed_dial_encoder{
                id: speedDialEncoder
                x: 0
                y: 0
                width: 653
                anchors.verticalCenter: rectangleSpeedEncoder.verticalCenter
                anchors.horizontalCenter: rectangleSpeedEncoder.horizontalCenter
                scale: 0.7*rectangleSpeedEncoder.height/548
                kphFrame: 0
                activeFocusOnTab: false
                kphDisplay: "0"

            }
        }

        Rectangle {
            id: rectangleVisible
            visible: false
            color: "#1d2128"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangleTop.bottom
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 10

            Label {
                id: labelTitle
                height: 25
                color: "#55aaff"
                text: qsTr("Info")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 10
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                font.pointSize: 12
            }

            ScrollView {
                id: scrollView
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: labelTitle.bottom
                anchors.bottom: parent.bottom
                clip: true
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10

                Text {
                    id: textHome
                    color: "#a9b2c8"
                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:8.25pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600;\">ZESA EPE dashboard</span></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Version 1, 7 January 2020</p>\n<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><br /></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Copyright (c) 2020 <span style=\" font-weight:600;\">Mario Klanac</span></p>\n<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-weight:600;\"><br /></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-weight:600; color:#55aaff;\">Upute</span>: Program ...</p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Test jedan </p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">  </p></body></html>"
                    anchors.fill: parent
                    font.pixelSize: 12
                    textFormat: Text.RichText
                }
            }
        }






    }

    Connections{
        target: backend

        function onUpdateSpeed(speedInt, speedStr){
            speedDialEncoder.kphFrame = 200*(speedInt/2000)
            speedDialEncoder.kphDisplay = speedStr
            animatedImage.speed = speedDialEncoder.kphFrame/2
        }

        function onIsVisible(isVisible){
            rectangleVisible.visible = isVisible
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.25;height:480;width:640}
}
##^##*/
