import QtQuick
import QtQuick.Controls

ComboBox {
    id: control

    property color color: "dodgerblue"
    property color hoverColor: Qt.darker(this.color)
    property color borderColor: "dodgerblue"
    property color borderHoverColor: Qt.darker(this.borderColor)
    property color textColor: "dodgerblue"
    property color textHoverColor: Qt.darker(this.textColor)
    property color indicatorColor: this.textColor
    property color indicatorHoverColor: Qt.darker(this.indicatorColor)
    property color highlightedColor: "white"
    property int radius: 3

    delegate: ItemDelegate {
        width: control.width
        contentItem: Text {
            text: control.textRole
                ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole])
                : modelData
            color: index === control.highlightedIndex ? control.highlightedColor : control.textColor
            font: control.font
            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
        }
        highlighted: control.highlightedIndex === index
    }

    indicator: Canvas {
        id: canvas
        x: control.width - width - control.rightPadding
        y: control.topPadding + (control.availableHeight - height) / 2
        width: 12
        height: 8
        contextType: "2d"

        Connections {
            target: control
            function onPressedChanged() { canvas.requestPaint(); }
        }

        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width, 0);
            context.lineTo(width / 2, height);
            context.closePath();
            context.fillStyle = control.pressed ? control.indicatorHoverColor : control.indicatorColor;
            context.fill();
        }
    }

    contentItem: Text {
        leftPadding: 8
        rightPadding: control.indicator.width + control.spacing
        text: control.displayText
        font: control.font
        color: control.pressed ? control.textHoverColor : control.textColor
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 120
        implicitHeight: 40
        border.color: control.pressed ? control.borderHoverColor : control.borderColor
        border.width: control.visualFocus ? 2 : 1
        radius: 2
    }

    popup: Popup {
        y: control.height - 1
        width: control.width
        implicitHeight: contentItem.implicitHeight
        padding: 1
        z: control.z > 1 ? control.z + 1 : 2

        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: control.popup.visible ? control.delegateModel : null
            currentIndex: control.highlightedIndex

            ScrollIndicator.vertical: ScrollIndicator { }
        }

        background: Rectangle {
            border.color: control.borderColor
            radius: 2
        }
    }
}
