import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.14

ToolBar {
    Layout.fillWidth: true
    height: 48
    Material.elevation: 6
    Material.background: "#3182CE"

    RowLayout {
        anchors.fill: parent
        ToolButton {
            icon.source: "qrc:/icons/menu.svg"
        }

        Label {
            text: "Inicio"
            elide: Label.ElideRight
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

        ToolButton {
            text: qsTr("⋮")
        }
    }
}
