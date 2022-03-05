import QtQuick

Rectangle {

    property int index

    anchors.fill: parent
    color: "transparent"
    visible: index === parent.currentIndex
    objectName: "CustTabItem"

}
