import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.14

Rectangle {
    Layout.fillHeight: true
    Layout.fillWidth: true
    color: "#EDF2F7"
    StackLayout {
        id: mainStackLayoutContainer
        anchors.fill: parent
        currentIndex: root.currentIndexValue

        ModuleSelector {}
    }
}
