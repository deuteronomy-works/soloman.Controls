import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import "./" as Soloman


Rectangle {

    Soloman.SProperties {id: properties}

    implicitWidth: 100
    implicitHeight: 24
    color: "lightblue"
    clip: true

    RowLayout {
        anchors.fill: parent
        spacing: 0
        
        Rectangle {
            Layout.preferredWidth: 20
            Layout.fillHeight: true
            Layout.margins: 5
            Layout.leftMargin: 0
            Layout.rightMargin: 0
            color: "transparent"

            Text {
                anchors.verticalCenter: parent.verticalCenter
                font.family: properties.fontFAR.name
                text: properties.fa_calender
                font.pixelSize: 14
            }
        }

        Text {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: "Nov 12, 2021"
        }
    }

}
