import QtQuick 2.10
import QtQuick.Controls 2.0

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
