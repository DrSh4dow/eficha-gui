import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.14
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    visible: true
    id: root
    width: 800
    minimumWidth: 560
    minimumHeight: 504
    height: 640
    title: qsTr("eFicha")
    Material.theme: Material.Light
    property bool isDropdownCommandmenuVisible: false
    property int currentIndexValue: 0

    Shortcut {
        sequence: "Ctrl+P"
        onActivated: {
            if (isDropdownCommandmenuVisible) {
                isDropdownCommandmenuVisible = false
            } else {
                isDropdownCommandmenuVisible = true
            }
        }
    }

    RowLayout {
        id: mainRowLayout
        anchors.fill: parent
        spacing: 0

        NavigationMenu {}

        MainContainer {}
    }

    DropdownCommandMenu {
        id: mainDropdownCommandMenu
        focus: isDropdownCommandmenuVisible
        y: isDropdownCommandmenuVisible ? 0 : -48
        Keys.onEscapePressed: isDropdownCommandmenuVisible = false
    }
}
