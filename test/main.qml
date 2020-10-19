import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../_Controls"

ApplicationWindow {
    visible: true
    width: 500
    height: 400
    color: "red"

    menuBar: TabBar {

        TabButton {
            text: "0"

            onClicked: console.log(sField.text, sField.passwordCharacter)

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

    SSecureField {
        id: sField
    }


}
