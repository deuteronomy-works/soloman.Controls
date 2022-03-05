import QtQuick
import QtQuick.Controls.Basic

TextArea {
    id: tArea

    // For background
    property color bgColor: "transparent"
    property color borderColor
    property int borderWidth
    property int radius

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 40
        color: tArea.bgColor
        border.width: tArea.borderWidth
        border.color: tArea.borderColor
        radius: tArea.radius
    }
}
