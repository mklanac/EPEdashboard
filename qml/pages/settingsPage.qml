import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0
import "../controls"

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Rectangle {
            id: rectanglePN
            height: 69
            color: "#495163"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.top: parent.top
            anchors.rightMargin: 10
            anchors.leftMargin: 50
            anchors.topMargin: 40

            GridLayout {
                anchors.fill: parent
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                rows: 1
                columns: 3

                Label {
                    id: label_ip_address
                    color: "#c3cbdd"
                    text: qsTr("IP address")
                    Layout.fillWidth: true
                    Layout.maximumWidth: 120
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                    anchors.leftMargin: 5
                }

                CustomTextField{
                    id: ip_address_textfield
                    placeholderText: "PROFINET IP address"
                    Layout.maximumWidth: 400
                    Layout.fillWidth: true
                    Layout.preferredHeight: 40
                    Layout.preferredWidth: 250
                }

                CustomButton {
                    id: setIPaddress
                    text: "Set IP address"
                    checkable: true
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 40
                    Layout.maximumWidth: 150
                    onClicked: {
                        backend.setDriveIP(ip_address_textfield.text)
                        connectToDrive.enabled = true

                    }

                }





            }
        }

        Rectangle {
            id: rectangleConnect
            height: 69
            color: "#495163"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.top: rectanglePN.bottom
            clip: true
            anchors.leftMargin: 50
            anchors.topMargin: 10
            GridLayout {
                anchors.fill: parent
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                rows: 1
                columns: 3
                CustomButton {
                    id: connectToDrive
                    text: "Connect"
                    checkable: true
                    enabled: false
                    Layout.maximumWidth: 150
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 40
                    onClicked: {
                        backend.connectToDrive()
                        enableDrive.enabled = true
                    }
                }

                CustomButton {
                    id: enableDrive
                    text: "Enable"
                    checkable: true
                    enabled: false
                    Layout.maximumWidth: 150
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 40
                    onClicked: {
                        backend.enableDrive()
                        disableDrive.enabled = true
                    }
                }

                CustomButton {
                    id: disableDrive
                    text: "Disable"
                    checkable: true
                    enabled: false
                    Layout.maximumWidth: 150
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: 40
                    onClicked: {
                        backend.disableDrive()
                        enableDrive.enabled = true
                    }



                }
            }
            anchors.rightMargin: 10
        }

        Rectangle {
            id: rectangleControl
            x: 50
            y: 40
            height: 69
            color: "#495163"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.top: rectangleConnect.bottom
            anchors.topMargin: 10
            GridLayout {
                anchors.fill: parent
                rows: 1
                anchors.leftMargin: 10
                columns: 3
                anchors.rightMargin: 10
                Label {
                    id: label_ip_address1
                    color: "#c3cbdd"
                    text: qsTr("Speed/Torque control")
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                    Layout.maximumWidth: 120
                    anchors.leftMargin: 5
                    Layout.fillWidth: true
                }
                CustomSwitch{

                }


            }
            anchors.leftMargin: 50
            anchors.rightMargin: 10
        }

        Rectangle {
            id: rectangleFluke1
            height: 69
            color: "#495163"
            radius: 10
            anchors.left: parent.horizontalCenter
            anchors.right: parent.right
            anchors.top: parent.top
            GridLayout {
                anchors.fill: parent
                Label {
                    id: label_fluke1
                    color: "#c3cbdd"
                    text: qsTr("Device name")
                    verticalAlignment: Text.AlignVCenter
                    Layout.maximumWidth: 120
                    anchors.leftMargin: 5
                    font.pointSize: 10
                    Layout.fillWidth: true
                }

                CustomTextField {
                    id: fluke_textfield1
                    Layout.preferredWidth: 250
                    placeholderText: "Fluke device name"
                    Layout.maximumWidth: 400
                    Layout.preferredHeight: 40
                    Layout.fillWidth: true
                }

                CustomButton {
                    id: fluke1set
                    text: "Set name"
                    Layout.preferredWidth: 100
                    checkable: true
                    Layout.maximumWidth: 150
                    Layout.preferredHeight: 40
                }
                rows: 1
                anchors.leftMargin: 10
                columns: 3
                anchors.rightMargin: 10
            }
            anchors.leftMargin: 10
            anchors.rightMargin: 50
            anchors.topMargin: 40
        }

        Rectangle {
            id: rectangleFluke2
            height: 69
            color: "#495163"
            radius: 10
            anchors.left: parent.horizontalCenter
            anchors.right: parent.right
            anchors.top: rectangleFluke1.bottom
            GridLayout {
                anchors.fill: parent
                Label {
                    id: label_fluke2
                    color: "#c3cbdd"
                    text: qsTr("Device name")
                    verticalAlignment: Text.AlignVCenter
                    Layout.maximumWidth: 120
                    anchors.leftMargin: 5
                    font.pointSize: 10
                    Layout.fillWidth: true
                }

                CustomTextField {
                    id: fluke_textfield2
                    Layout.preferredWidth: 250
                    placeholderText: "Fluke device name"
                    Layout.maximumWidth: 400
                    Layout.preferredHeight: 40
                    Layout.fillWidth: true
                }

                CustomButton {
                    id: fluke2set
                    text: "Set name"
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 150
                    checkable: true
                    Layout.preferredHeight: 40
                }
                rows: 1
                anchors.leftMargin: 10
                columns: 3
                anchors.rightMargin: 10
            }
            anchors.leftMargin: 10
            anchors.rightMargin: 50
            anchors.topMargin: 10
        }

        Rectangle {
            id: rectangleMetrel
            height: 69
            color: "#495163"
            radius: 10
            anchors.left: parent.horizontalCenter
            anchors.right: parent.right
            anchors.top: rectangleFluke2.bottom
            GridLayout {
                anchors.fill: parent
                Label {
                    id: label_metrel
                    color: "#c3cbdd"
                    text: qsTr("Device name")
                    verticalAlignment: Text.AlignVCenter
                    Layout.maximumWidth: 120
                    anchors.leftMargin: 5
                    font.pointSize: 10
                    Layout.fillWidth: true
                }

                CustomTextField {
                    id: metrel_textfield
                    Layout.preferredWidth: 250
                    placeholderText: "Metrel 2292 device name"
                    Layout.maximumWidth: 400
                    Layout.preferredHeight: 40
                    Layout.fillWidth: true
                }

                CustomButton {
                    id: metrelset
                    text: "Set name"
                    Layout.preferredWidth: 100
                    Layout.maximumWidth: 150
                    checkable: true
                    Layout.preferredHeight: 40
                }
                rows: 1
                anchors.leftMargin: 10
                columns: 3
                anchors.rightMargin: 10
            }
            anchors.leftMargin: 10
            anchors.rightMargin: 50
            anchors.topMargin: 10
        }



    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:480;width:640}D{i:16}D{i:21}D{i:26}
}
##^##*/
