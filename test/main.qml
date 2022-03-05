import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../_Controls"

ApplicationWindow {
    visible: true
    width: 500
    height: 400
    color: "red"

    menuBar: TabBar {

        TabButton {
            text: "0"

            onClicked: console.log(sField.text)

        }

        TabButton {
            text: "1"

            onClicked: {
                sv.currentIndex = 1
                console.log(sv.items[1].color, sv.currentItem.color)
            }

        }

        TabButton {
            text: "2"

            onClicked: {
                sv.currentIndex = 1
                console.log(sv.items[2].color, sv.currentItem.color)
            }

        }

        TabButton {
            text: "3"

            onClicked: {

                sv.removeChild(1)
            }

        }

    }

    STextField {
        id: sField
    }


}
