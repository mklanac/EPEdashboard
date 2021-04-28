import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls"
import QtQuick.Timeline 1.0

Window {
    id: splashScreen
    width: 380
    height: 580
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")

    property bool conditionVisible: false

    // Remove Title Bar
    flags: Qt.SplashScreen | Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint

    // Internal Functions
    QtObject{
        id: internal

        function checkLogin(username, password){
            if(username === "user" && password === "root"){
                var component = Qt.createComponent("main.qml")
                var win = component.createObject()
                win.username = username
                win.password = password
                win.windowStatus = 1
                win.windowMargin = 0
                win.showFullScreen()
                visible = false
            }
        }
    }

    Rectangle {
        id: bg
        x: 78
        y: 131
        width: 360
        height: 560
        color: "#151515"
        radius: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        z: 1

        CircularProgressBar {
            id: circularProgressBar
            x: 55
            y: 198
            opacity: 0
            anchors.verticalCenter: parent.verticalCenter
            value: 100
            progressWidth: 8
            strokeBgWidth: 4
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: logoImage
            x: 85
            width: 300
            height: 120
            opacity: 1
            anchors.top: parent.top
            source: "../images/svg_images/FERlogo.svg"
            anchors.topMargin: 45
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }


        CustomTextField {
            id: textUsername
            x: 30
            y: 365
            opacity: 1
            anchors.bottom: textPassword.top
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Email"
        }

        CustomTextField {
            id: textPassword
            x: 30
            y: 418
            opacity: 1
            anchors.bottom: btnLogin.top
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Lozinka"
            echoMode: TextInput.Password
            Keys.onEnterPressed: {
                internal.checkLogin(textUsername.text, textPassword.text)
            }
            Keys.onReturnPressed: {
                internal.checkLogin(textUsername.text, textPassword.text)
            }

            Image {
                id: imageHideShowPassword
                width: 20
                height: 20
                anchors.right: parent.right
                source: "../images/svg_images/visibility.svg"
                antialiasing: true
                anchors.rightMargin: 15
                anchors.verticalCenter: parent.verticalCenter
                fillMode: Image.PreserveAspectFit
                MouseArea{
                    anchors.fill: parent
                    onReleased: {
                        if(conditionVisible){
                            imageHideShowPassword.source= "../images/svg_images/visibility.svg"
                            textPassword.echoMode = TextInput.Password
                            conditionVisible = false
                        }
                        else{
                            imageHideShowPassword.source = "../images/svg_images/invisible.svg"
                            textPassword.echoMode = TextInput.Normal
                            conditionVisible = true
                        }


                    }


                }
            }
        }

        CustomButton {
            id: btnLogin
            x: 30
            y: 469
            width: 300
            height: 40
            opacity: 1
            text: "Prijavi se!"
            anchors.bottom: parent.bottom
            font.pointSize: 10
            font.family: "Segoe UI"
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: internal.checkLogin(textUsername.text, textPassword.text)
        }

        Label {
            id: label2
            x: 97
            opacity: 0
            color: "#ffffff"
            text: qsTr("EPE dashboard")
            anchors.top: logoImage.bottom
            anchors.topMargin: 6
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "Segoe UI"
            font.pointSize: 16
        }

        Label {
            id: label1
            x: 55
            y: 330
            opacity: 1
            color: "#ffffff"
            text: qsTr("Email adresa i lozinka")
            anchors.bottom: textUsername.top
            anchors.bottomMargin: 20
            anchors.horizontalCenterOffset: 0
            font.family: "Segoe UI"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 10
        }

        Label {
            id: label
            x: 100
            y: 294
            opacity: 1
            color: "#ffffff"
            text: qsTr("Prijava")
            anchors.bottom: label1.top
            anchors.bottomMargin: 10
            font.family: "Segoe UI"
            font.pointSize: 16
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomButton {
            id: btnClose
            x: 20
            width: 30
            height: 30
            opacity: 1
            text: "X"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.rightMargin: 15
            font.family: "Segoe UI"
            font.pointSize: 10
            onClicked: splashScreen.close()
        }


    }

    DropShadow{
        anchors.fill: bg
        source: bg
        verticalOffset: 0
        horizontalOffset: 0
        radius: 10
        color: "#40000000"
        z: 0
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                duration: 3000
                running: true
                loops: 1
                to: 3000
                from: 0
            }
        ]
        enabled: true
        startFrame: 0
        endFrame: 3000

        KeyframeGroup {
            target: circularProgressBar
            property: "value"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1300
                value: 100
            }
        }

        KeyframeGroup {
            target: circularProgressBar
            property: "opacity"
            Keyframe {
                frame: 1301
                value: 1
            }

            Keyframe {
                frame: 1800
                value: 0
            }

            Keyframe {
                frame: 0
                value: 1
            }
        }

        KeyframeGroup {
            target: logoImage
            property: "opacity"
            Keyframe {
                frame: 1801
                value: 0
            }

            Keyframe {
                frame: 2300
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: label
            property: "opacity"
            Keyframe {
                frame: 1899
                value: 0
            }

            Keyframe {
                frame: 2396
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: label1
            property: "opacity"
            Keyframe {
                frame: 1996
                value: 0
            }

            Keyframe {
                frame: 2504
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: textUsername
            property: "opacity"
            Keyframe {
                frame: 2097
                value: 0
            }

            Keyframe {
                frame: 2652
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: textPassword
            property: "opacity"
            Keyframe {
                frame: 2198
                value: 0
            }

            Keyframe {
                frame: 2796
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: btnLogin
            property: "opacity"
            Keyframe {
                frame: 2298
                value: 0
            }

            Keyframe {
                frame: 2951
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: bg
            property: "height"
            Keyframe {
                frame: 1301
                value: 360
            }

            Keyframe {
                easing.bezierCurve: [0.221,-0.00103,0.222,0.997,1,1]
                frame: 1899
                value: 560
            }

            Keyframe {
                frame: 0
                value: 360
            }
        }

        KeyframeGroup {
            target: label2
            property: "opacity"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1800
                value: 0
            }

            Keyframe {
                frame: 2300
                value: 1
            }
        }
    }
}


