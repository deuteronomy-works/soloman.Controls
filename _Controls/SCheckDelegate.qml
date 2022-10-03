import QtQuick
import QtQuick.Controls

CheckDelegate {
    id: control

    property color color: "dodgerblue"
    property color hoverColor: Qt.darker(this.color)
    property color borderColor: "dodgerblue"
    property color hoverBorderColor: Qt.darker(this.borderColor)
    property color textColor: "dodgerblue"
    property color textHoverColor: Qt.darker(this.textColor)
    property int radius: 3

    contentItem: Text {
        rightPadding: control.indicator.width + control.spacing
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? control.textHoverColor : control.textColor
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
    }

    indicator: Rectangle {
        implicitWidth: 26
        implicitHeight: 26
        x: control.width - width - control.rightPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        radius: control.radius
        color: "transparent"
        border.color: control.down ? control.hoverBorderColor : control.borderColor

        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: control.radius - 1
            color: control.down ? control.hoverColor : control.color
            visible: control.checked
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        visible: control.down || control.highlighted
        color: control.down ? "#bdbebf" : "#eeeeee"
    }
}
