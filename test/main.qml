import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../_Controls"

ApplicationWindow {
    visible: true
    width: 500
    height: 400

    Row {
        SButton {
            text: "Love"
            bgColor: "dodgerblue"
            color: "white"
        }

        Button {
            text: "Love"
        }
    }

    Component.onCompleted: {
        console.log(width, height)
    }

}
