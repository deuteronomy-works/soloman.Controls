import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: ctrl

    // for contentItem
    property color textColor: "black"
    property color textHoverColor: Qt.lighter(this.textColor)
    property color textPressedColor: Qt.darker(this.textColor)

    // for background
    property color color: "#f1f1f1"
    property color hoverColor: Qt.lighter(this.color)
    property color pressedColor: Qt.darker(this.color)
    property int radius: 0
    property color borderColor: "black"
    property int borderWidth: 0

    contentItem: Text {
        text: ctrl.text
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font: ctrl.font
        color: ctrl.down ? ctrl.textPressedColor : ctrl.hovered ? ctrl.textHoverColor : ctrl.textColor
    }

    background: Rectangle {
        implicitWidth: 120
        implicitHeight: 40
        color: ctrl.down ? ctrl.pressedColor : ctrl.hovered ? ctrl.hoverColor : ctrl.color
        radius: ctrl.radius
        border.width: ctrl.borderWidth
        border.color: ctrl.borderColor
    }

}
