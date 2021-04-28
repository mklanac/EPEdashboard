import QtQuick 2.0

Rectangle {
    id: root
    
// public
    property bool checked: false

    signal clicked(bool checked);  // onClicked:{root.checked = checked;  print('onClicked', checked)}

// private
    width: 200;  height: 40 // default size
    border.width: 0.05 * root.height
    radius:       0.5  * root.height
    border.color: "#282c34"
    color:        checked? '#282c34': '#282c34' // background
    opacity:      enabled  &&  !mouseArea.pressed? 1: 0.3 // disabled/pressed state
    
    Text {
        text:  checked?    'Torque': 'Speed'
        color: checked? '#81848c': '#81848c'
        x:    (checked? 0: pill.width) + (parent.width - pill.width - width) / 2
        font.pixelSize: 0.5 * root.height
        anchors.verticalCenter: parent.verticalCenter
    }
    
    Rectangle { // pill
        id: pill
        
        x: checked? root.width - pill.width: 0 // binding must not be broken with imperative x = ...
        width: root.height;  height: width
        color: "#4891d9" // square
        border.width: parent.border.width
        radius:       parent.radius
        border.color: "#282c34"
    }
    
    MouseArea {
        id: mouseArea
        
        anchors.fill: parent
        
        drag {
            target:   pill
            axis:     Drag.XAxis
            maximumX: root.width - pill.width
            minimumX: 0
        }
        
        onReleased: { // releasing at the end of drag
            if( checked  &&  pill.x < root.width - pill.width){
                root.checked = false
                root.clicked(false) // right to left
            }
            if(!checked  &&  pill.x){
                root.checked = true
                root.clicked(true ) // left  to right
            }
        }

        //onClicked:{root.checked = checked;  print('onClicked', checked)}

        onClicked: root.clicked(!checked) // emit
    }
}

/*##^##
Designer {
    D{i:0;height:40;width:200}
}
##^##*/
