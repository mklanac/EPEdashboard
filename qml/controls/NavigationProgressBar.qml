import QtQuick 2.15
import QtQuick.Controls 2.15

import QtGraphicalEffects 1.15
import QtQuick.Controls.impl 2.3


Rectangle {
    id: container
    height: 60
    color: "#00000000"
    width: 600
    radius: height/2
    // Custom Properties
    property color colorDefault: "#656565"
    property color colorMouseOver: "#2c313c"
    property color colorChecked: "#55aaff"
    property int numOfSteps: 6
    property int currentStep: 1

    Repeater {
        id: repeaterCircle
            model: numOfSteps; // just define the number you want, can be a variable too
            delegate:
                Rectangle {
                    id: pressSwitch

                    height: container.height*0.5
                    width: height
                    x: container.width/(2*numOfSteps) - height/2 + index*(container.width/numOfSteps)
                    y: container.height/2 - height/2
                    radius: width / 2

                    border.color: "#656565"
                    border.width: width / (2*numOfSteps)

                    color: (index < currentStep) ? "#64B6FA" : "#656565"
                    property bool ease: true
                    Behavior on color {
                        enabled: ease
                        ColorAnimation {
                            easing.type: Easing.OutQuint
                        }
                    }

                    Text {
                            id: name
                            text: index+1
                            color: "#f0f0f0"
                            anchors.verticalCenter: parent.verticalCenter
                            font.pointSize: 15
                            font.weight: Font.Thin
                            font.bold: true
                            font.family: "Courier"
                            anchors.horizontalCenter: parent.horizontalCenter
                        }


                    state: "TODO"
                    states: [
                        State {
                            name: "TODO"
                        },
                        State {
                            name: "DONE"
                        }
                    ]
                }


        }

    Repeater {
        id: repeaterLine
        model: numOfSteps-1

        delegate: ProgressBar
            {
                id: pbProgress
                width: container.width/numOfSteps - container.height*0.5 + container.height/(2*numOfSteps)
                height: container.height*0.12
                x: container.width/(2*numOfSteps) + container.height*0.5/2 + index*(container.width/numOfSteps) - 0.5*container.height/(2*numOfSteps)
                y: container.height/2 - height/2

                value: (index < currentStep-1) ? 1 : 0

                background: Rectangle {
                                implicitWidth: width
                                implicitHeight: height
                                color: "#656565"
                            }




                contentItem: Item {
                    id: item1
                                implicitWidth: width
                                implicitHeight: height


                                Rectangle {
                                    width: pbProgress.visualPosition * (parent.width + container.height/(2*numOfSteps))
                                    height: parent.height*0.5
                                    x: -container.height/(4*numOfSteps)
                                    y: 0.5*pbProgress.height - 0.5*height
                                    color: "#64B6FA"
                                }
                            }
            }
    }


}


/*##^##
Designer {
    D{i:0;formeditorColor:"#000000";formeditorZoom:3;height:70;width:808}
}
##^##*/
