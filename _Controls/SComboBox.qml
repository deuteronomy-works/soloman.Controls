import QtQuick 2.10
import QtQuick.Controls 2.3

ComboBox {
    id: cbox

    // For background
    property color bgColor: cbox.down ? palette.mid : palette.button
    property color borderColor
    property int borderWidth
    property int radius

    // For contentItem
    property color color: palette.buttonText

    // For indicator
    property text indicatorText: ""
    property color indicatorColor: cbox.color

    rightPadding: cbox.indicator.width + cbox.spacing

    background: Rectangle {
        implicitWidth: 120
        implicitHeight: 40
        color: cbox.bgColor
        border.width: cbox.borderWidth
        border.color: cbox.borderColor
        radius: cbox.radius
    }

    contentItem: Text {
        leftPadding: cbox.leftPadding

        rightPadding: cbox.rightPadding

        text: cbox.displayText
        font: cbox.font
        color: cbox.color
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight

    }

    indicator: Text {
        rightPadding: 0
        leftPadding: 0
        font: ""
        color: cbox.indicatorColor
        verticalAlignment: Text.AlignVCenter
        text: cbox.indicatorText
    }

}
