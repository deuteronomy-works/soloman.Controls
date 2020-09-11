import QtQuick 2.10
import QtQuick.Controls 2.3

ComboBox {
    id: cbox

    // For background
    property color bgColor: cbox.down ? palette.mid : palette.button
    property color borderColor
    property int borderWidth
    property int radius

    background: Rectangle {
        implicitWidth: 120
        implicitHeight: 40
        color: cbox.bgColor
        border.width: cbox.borderWidth
        border.color: cbox.borderColor
        radius: cbox.radius
    }

}
