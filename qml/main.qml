import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls"
import QtQuick.Dialogs 1.3

Window {
    id: mainWindow
    width: 1000
    height: 580
    minimumWidth: 800
    minimumHeight: 500
    visible: true
    color: "#00000000"
    title: "EPE dashboard"

    // Remove title bar
    flags: Qt.Window | Qt.FramelessWindowHint

    // Custom Properties
    property string username
    property string password
    property int currentLVStep: 1
    property bool hideNavigation: true

    // Propeties
    property int windowStatus: 0
    property int windowMargin: 10

    // Text Edit Properties
    property alias actualPage: stackView.currentItem

    // Internal functions
    QtObject{
        id: internal

        function resetResizeBorders(){
            // Resize visibility
            resizeLeft.visible = true
            resizeRight.visible = true
            resizeBottom.visible = true
            resizeWindow.visible = true
        }

        function maximizeRestore(){
            if(windowStatus == 0){
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                // Resize visibility
                resizeLeft.visible = false
                resizeRight.visible = false
                resizeBottom.visible = false
                resizeWindow.visible = false
                btnMaximizeRestore.btnIconSource = "../images/svg_images/restore_icon.svg"
            }
            else{
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function ifMaximizedWindowRestore(){
            if(windowStatus == 1){
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                // Resize visibility
                internal.resetResizeBorders()
                btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function restoreMargins(){
            windowStatus = 0
            windowMargin = 10
            // Resize visibility
            internal.resetResizeBorders()
            btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
        }
    }



    Rectangle {
        id: bg
        color: "#2c313c"
        border.color: "#383e4c"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: windowMargin
        anchors.leftMargin: windowMargin
        anchors.bottomMargin: windowMargin
        anchors.topMargin: windowMargin
        z: 1

        Rectangle {
            id: appContainer
            color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#1c1d20"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                ToggleButton {
                    onClicked: animationMenu.running = true
                }

                Rectangle {
                    id: topBarDescription
                    y: 28
                    height: 25
                    color: "#282c34"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 70
                    anchors.bottomMargin: 0

                    Label {
                        id: labelTopInfo
                        color: "#5f6a82"
                        text: qsTr("ZESA")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.rightMargin: 300
                        anchors.topMargin: 0
                        anchors.leftMargin: 10
                    }

                    Label {
                        id: labelRightInfo
                        color: "#5f6a82"
                        text: qsTr("| Dashboard")
                        anchors.left: labelTopInfo.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        anchors.topMargin: 0
                        anchors.rightMargin: 10
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 0
                    }
                }

                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 70
                    anchors.topMargin: 0

                    DragHandler {
                        onActiveChanged: if(active){
                                             mainWindow.startSystemMove()
                                             internal.ifMaximizedWindowRestore()
                                         }
                    }

                    Image {
                        id: iconApp
                        width: 77
                        height: 35
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../images/svg_images/FERlogo.svg"
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 5
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: label
                        color: "#c3cbdd"
                        text: qsTr("EPE dashboard")
                        anchors.left: iconApp.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 10
                        anchors.leftMargin: 5
                    }
                }

                Row {
                    id: rowBtns
                    x: 872
                    width: 105
                    height: 35
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.rightMargin: 0

                    TopBarButton{
                        id: btnMinimize
                        onClicked: {
                            mainWindow.showMinimized()
                            internal.restoreMargins()
                        }
                    }

                    TopBarButton {
                        id: btnMaximizeRestore
                        btnIconSource: "../images/svg_images/restore_icon.svg"
                        onClicked: internal.maximizeRestore()
                    }

                    TopBarButton {
                        id: btnClose
                        btnColorClicked: "#ff007f"
                        btnIconSource: "../images/svg_images/close_icon.svg"
                        onClicked: mainWindow.close()
                    }
                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: 0

                Rectangle {
                    id: leftMenu
                    width: 70
                    color: "#1c1d20"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0

                    PropertyAnimation{
                        id: animationMenu
                        target: leftMenu
                        property: "width"
                        to: if(leftMenu.width == 70) return 300; else return 70
                        duration: 500
                        easing.type: Easing.InOutQuint
                    }

                    Column {
                        id: columnMenus
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        clip: true
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 90
                        anchors.topMargin: 0

                        LeftMenuBtn {
                            id: btnHome
                            width: leftMenu.width
                            text: qsTr("Po??etna")
                            btnIconSource: "../images/svg_images/home_icon.svg"
                            clip: false
                            isActiveMenu: true
                            onClicked: {
                                btnHome.isActiveMenu = true
                                btnLV1.isActiveMenu = false
                                btnLV2.isActiveMenu = false
                                btnLV3.isActiveMenu = false
                                btnLV4.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                hideNavigation = true
                                labelRightInfo.text = qsTr("| Dashboard")
                                stackView.push(Qt.resolvedUrl("pages/dashboardPage.qml"))
                            }
                        }

                        LeftMenuBtn {
                            id: btnLV1
                            width: leftMenu.width
                            text: qsTr("Krivulja magnetiziranja DC stroja")
                            btnIconSource: "../images/svg_images/krivuljaMagnetiziranja.svg"
                            clip: false
                            isActiveMenu: false
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnLV1.isActiveMenu = true
                                btnLV2.isActiveMenu = false
                                btnLV3.isActiveMenu = false
                                btnLV4.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                hideNavigation = false
                                labelRightInfo.text = "| " + btnLV1.text
                                navProgressBar.numOfSteps = 6
                                var currentPage = "pages/LV1step%1.qml"
                                stackView.push(Qt.resolvedUrl(currentPage.arg(currentLVStep)))
                            }
                        }

                        LeftMenuBtn {
                            id: btnLV2
                            width: leftMenu.width
                            text: qsTr("Prazni i kratki spoj asinkronog stroja")
                            btnIconSource: "../images/svg_images/electric-motorV2.svg"
                            clip: false
                            isActiveMenu: false
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnLV1.isActiveMenu = false
                                btnLV2.isActiveMenu = true
                                btnLV3.isActiveMenu = false
                                btnLV4.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                hideNavigation = false
                                labelRightInfo.text = "| " + btnLV2.text
                                navProgressBar.numOfSteps = 10
                                stackView.push(Qt.resolvedUrl("pages/homePage.qml"))
                            }
                        }

                        LeftMenuBtn {
                            id: btnLV3
                            width: leftMenu.width
                            text: qsTr("Upravljanje brzinom DC stroja")
                            btnIconSource: "../images/svg_images/speedometerV2.svg"
                            clip: false
                            isActiveMenu: false
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnLV1.isActiveMenu = false
                                btnLV2.isActiveMenu = false
                                btnLV3.isActiveMenu = true
                                btnLV4.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                hideNavigation = false
                                labelRightInfo.text = "| " + btnLV3.text
                                navProgressBar.numOfSteps = 5
                                stackView.push(Qt.resolvedUrl("pages/homePage.qml"))
                            }
                        }
                        LeftMenuBtn {
                            id: btnLV4
                            width: leftMenu.width
                            text: qsTr("Tere??enje asinkronog stroja")
                            btnIconSource: "../images/svg_images/electric-motorV2.svg"
                            clip: false
                            isActiveMenu: false
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnLV1.isActiveMenu = false
                                btnLV2.isActiveMenu = false
                                btnLV3.isActiveMenu = false
                                btnLV4.isActiveMenu = true
                                btnSettings.isActiveMenu = false
                                hideNavigation = false
                                labelRightInfo.text = "| " + btnLV4.text
                                navProgressBar.numOfSteps = 5
                                stackView.push(Qt.resolvedUrl("pages/encoderPage.qml"))
                            }
                        }

                        LeftMenuBtn {
                            id: btnOpen
                            width: leftMenu.width
                            text: qsTr("Otvori")
                            btnIconSource: "../images/svg_images/open_icon.svg"

                            onPressed: {
                                fileOpen.open()
                            }

                            FileDialog{
                                id: fileOpen
                                title: "Please choose a file"
                                folder: shortcuts.home
                                selectMultiple: false
                                nameFilters: ["Text File (*.txt)"]
                                onAccepted: {
                                    backend.openFile(fileOpen.fileUrl)
                                }
                            }
                        }

                        LeftMenuBtn {
                            id: btnSave
                            width: leftMenu.width
                            text: qsTr("Spremi")
                            btnIconSource: "../images/svg_images/save_icon.svg"

                            onPressed: {
                                fileSave.open()
                            }

                            FileDialog{
                                id: fileSave
                                title: "Save file"
                                folder: shortcuts.home
                                nameFilters: ["Text File (*.txt)"]
                                selectExisting: false
                                onAccepted: {
                                    backend.getTextField(actualPage.getText)
                                    backend.writeFile(fileSave.fileUrl)
                                }
                            }
                        }

                    }

                    LeftMenuBtn {
                        id: btnSettings
                        width: leftMenu.width
                        text: qsTr("Postavke")
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 25
                        btnIconSource: "../images/svg_images/settings_icon.svg"
                        onClicked: {
                            btnHome.isActiveMenu = false
                            btnLV1.isActiveMenu = false
                            btnLV2.isActiveMenu = false
                            btnLV3.isActiveMenu = false
                            btnLV4.isActiveMenu = false
                            btnSettings.isActiveMenu = true
                            hideNavigation = true
                            stackView.push(Qt.resolvedUrl("pages/settingsPage.qml"))
                        }
                    }
                }

                Rectangle {
                    id: contentPages
                    color: "#00000000"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 25
                    anchors.topMargin: 0

                    StackView {
                        id: stackView
                        anchors.fill: parent
                        initialItem: Qt.resolvedUrl("pages/dashboardPage.qml")
                    }

                    CustomNavigationButton {
                        id: nextNavigationButton
                        x: 783
                        y: 423
                        visible: (hideNavigation && currentLVStep<navProgressBar.numOfSteps)? false : true
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        z: 2
                        anchors.rightMargin: 25
                    }

                    NavigationProgressBar{
                        id: navProgressBar
                        visible: hideNavigation? false : true
                        currentStep: currentLVStep
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.bottom
                        anchors.bottom: parent.bottom
                        anchors.topMargin: -60
                        anchors.bottomMargin: -10
                        anchors.rightMargin: 50
                        anchors.leftMargin: 50

                    }

                    CustomNavigationButton {
                        id: previousNavigationButton
                        y: 221
                        width: 50
                        visible: (!hideNavigation && currentLVStep>1)? true : false
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        btnIconSource: "../images/svg_images/previous.svg"
                        anchors.leftMargin: 25
                        anchors.verticalCenterOffset: 0
                    }

                }


                Rectangle {
                    id: rectangle
                    color: "#282c34"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: contentPages.bottom
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    Label {
                        id: labelTopInfo1
                        color: "#5f6a82"
                        text: qsTr("ZESA")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.topMargin: 0
                        anchors.rightMargin: 30
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                    }

                    MouseArea {
                        id: resizeWindow
                        x: 884
                        y: 0
                        width: 25
                        height: 25
                        opacity: 0.5
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.rightMargin: 0
                        cursorShape: Qt.SizeFDiagCursor

                        DragHandler{
                            target: null
                            onActiveChanged: if (active){
                                                 mainWindow.startSystemResize(Qt.RightEdge | Qt.BottomEdge)
                                             }
                        }

                        Image {
                            id: resizeImage
                            width: 16
                            height: 16
                            anchors.fill: parent
                            source: "../images/svg_images/resize_icon.svg"
                            anchors.leftMargin: 5
                            anchors.topMargin: 5
                            sourceSize.height: 16
                            sourceSize.width: 16
                            fillMode: Image.PreserveAspectFit
                            antialiasing: false
                        }
                    }
                }
            }
        }
    }


    DropShadow{
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset: 0
        radius: 10
        samples: 16
        color: "#80000000"
        source: bg
        z: 0
    }

    MouseArea {
        id: resizeLeft
        width: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.LeftEdge) }
        }
    }

    MouseArea {
        id: resizeRight
        width: 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.RightEdge) }
        }
    }

    MouseArea {
        id: resizeBottom
        height: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 0
        cursorShape: Qt.SizeVerCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) { mainWindow.startSystemResize(Qt.BottomEdge) }
        }
    }

    Connections{
        target: backend

        function onReadText(text){
            actualPage.setText = text
        }
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
