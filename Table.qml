import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root

    property alias model: tableView.model

    ColumnLayout {
        id: tableCont
        anchors.fill: parent
        anchors.centerIn: parent
        HorizontalHeaderView {
            Layout.fillWidth: true
            id: horizontalHeader
            syncView: tableView
        }
        RowLayout {
            Layout.fillHeight: true
            Layout.fillWidth: true

            TableView {
                id: tableView
                Layout.fillWidth: true
                Layout.fillHeight: true

                clip: true

                delegate: ItemDelegate {

                    implicitHeight: tableView.height / 4
                    implicitWidth: tableView.width / 4
                    Text {
                        id: txt
                        anchors.centerIn: parent
                        text: model.display
                    }
                }
            }
        }
    }
}
