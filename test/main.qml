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

            onClicked: sv.currentIndex = 0

        }

        TabButton {
            text: "1"
            visible: sv.count > 2

            onClicked: {
                sv.currentIndex = 1
                console.log(sv.items[1].color, sv.currentItem.color)
            }

        }

        TabButton {
            text: "2"
            visible: sv.count > 3

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

    STabView {

        id: sv
        currentIndex: 0

        STab {
            width: 300
            height: 200
            color: "dodgerblue"
        }

    }

    Component.onCompleted: {
        var ind = sv.addChild(sv.url='New.qml')
        console.log(sv.items[ind])

        var indc = sv.addChild(sv.url='New.qml')
        console.log(sv.items[indc])
    }


}
