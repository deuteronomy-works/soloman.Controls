import QtQuick 2.10
import QtQuick.Controls 2.0

Button {
    id: btn

    // For contentItem
    property color color: palette.buttonText
    property int horizontalAlignment: Text.AlignHCenter
    property int vertilAlignment: Text.AlignVCenter
    property color bgColor: palette.button

    // For background
    property color borderColor
    property int borderWidth
    property int radius

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        color: btn.bgColor
        border.width: btn.borderWidth
        border.color: btn.borderColor
        radius: btn.radius
    }

    contentItem: Text {
        text: btn.text
        font: btn.font
        color: btn.color
        verticalAlignment: btn.vertilAlignment
        horizontalAlignment: btn.horizontalAlignment
    }

}
