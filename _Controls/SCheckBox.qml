import QtQuick
import QtQuick.Controls.Basic

CheckBox {
    id: control

    property color color: "dodgerblue"
    property color borderColor: "dodgerblue"
    property color textColor: "dodgerblue"

    indicator: Rectangle {
        implicitWidth: 26
        implicitHeight: 26
        x: control.leftPadding
        y: control.height / 2 - height / 2
        radius: 3
        border.color: control.down ? Qt.darker(control.borderColor) : control.borderColor

        Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: 2
            color: control.down ? Qt.darker(control.color) : control.color
            visible: control.checked
        }
    }

    contentItem: Text {
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? Qt.darker(control.textColor) : control.textColor
        verticalAlignment: Text.AlignVCenter
        leftPadding: control.indicator.width + control.spacing
    }

}
