import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../_Controls"

ApplicationWindow {
    visible: true
    width: 500
    height: 400
    color: "red"

    Row {
        SComboBox {
            model: ["Love", "lust"]
        }

        ComboBox {
            model: ["Love", "lust"]
        }
    }

    Component.onCompleted: {
        console.log(width, height)
    }

}
