import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
import "./" as Soloman


Rectangle {
    id: control

    Soloman.SProperties {id: properties}

    property string selectedDate

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

        Soloman.SButton {
            Layout.fillWidth: true
            implicitHeight: 24
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            text: control.selectedDate
            color: "transparent"

            onClicked: popup.open()
        }
    }


    Popup {
        id: popup


        property string selectedDate

        property int year: 2023
        property int month: 2
        property var month_string: {
            0: "January", 1: "February", 2: "March",
            3: "April", 4: "May", 5: "June",
            6: "July", 7: "August", 8: "September", 9: "October",
            10: "November", 11: "December"}

        property var years_model
        property int from: 2010
        property int to: 2030

        width: 256
        height: 256
        clip: true

        function createModel(from, to) {
            var llist = []
            for (var x=from; x<to; x++) {
                llist.push(x)
            }
            llist.push(to);

            years_model = llist;
        }

        Component.onCompleted: {
            createModel(popup.from, popup.to);
        }

        Rectangle {
            anchors.fill: parent

            StackView {
                id: stack
                anchors.fill: parent
                initialItem: days
            }

            Component {
                id: days

                Rectangle {

                    ColumnLayout {
                        anchors.fill: parent
                        anchors.margins: 8

                        RowLayout {
                            Layout.preferredHeight: 48
                            Layout.fillWidth: true
                            spacing: 0

                            Soloman.SButton {
                                Layout.preferredWidth: 24
                                text: "<"
                                enabled: popup.month > 0
                                onClicked: popup.month -= 1
                            }

                            Soloman.SButton {
                                Layout.fillWidth: true
                                text: popup.month_string[popup.month] + " " + popup.year

                                onClicked: stack.push(years)

                            }

                            Soloman.SButton {
                                Layout.preferredWidth: 24
                                text: ">"
                                enabled: popup.month < 11
                                onClicked: popup.month += 1
                            }

                        }

                        GridLayout {
                            columns: 1

                            DayOfWeekRow {
                                locale: grid.locale

                                //Layout.column: 1
                                Layout.fillWidth: true
                                Layout.alignment: Qt.AlignLeft
                            }

                            MonthGrid {
                                id: grid
                                month: popup.month
                                year: popup.year
                                locale: Qt.locale("en_US")

                                Layout.fillWidth: true
                                Layout.fillHeight: true

                                onClicked: {
                                    control.selectedDate = date
                                    popup.close()
                                }
                            }
                        }
                    }

                }

                
            }

            Component {
                id: years

                Rectangle {
                    clip: true
                    color: "transparent"

                    GridView {
                        anchors.centerIn: parent
                        width: 240
                        height: 240
                        model: popup.years_model
                        cellWidth: 60
                        cellHeight: 60
                        delegate: Soloman.SButton {
                            //anchors.fill: parent
                            implicitWidth: 60
                            implicitHeight: 60
                            text: modelData

                            onClicked: {
                                popup.year = modelData
                                stack.pop()
                            }
                        }
                    }

                }

            }
        }

    }

}
