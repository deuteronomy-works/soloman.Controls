import QtQuick
import QtQuick.Controls.Basic

TextField {
    id: tFi

    // For background
    property color bgColor: "white"
    property color borderColor: tFi.focus ? palette.highlight : palette.mid
    property int borderWidth: tFi.focus ? 2 : 1
    property int radius

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 40
        color: tFi.bgColor
        border.width: tFi.borderWidth
        border.color: tFi.borderColor
        radius: tFi.radius
    }
}
