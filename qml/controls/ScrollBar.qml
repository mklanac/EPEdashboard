import QtQuick 2.0

Rectangle { // ScrollBar to be placed as a direct child of a ListView or GridView (ScrollBar won't run by itself and gives errors)
    color: 'black'
    width: 0.01 * parent.width;  radius: 0.5 * width // size controlled by width
    anchors{right: parent.right;  margins: radius}
    
    height:  parent.height   / parent.contentHeight * parent.height
    y:       parent.contentY / parent.contentHeight * parent.height
    visible: parent.height   < parent.contentHeight
}
