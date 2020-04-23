import QtQuick 2.12
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.14
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    visible: true
    id: root
    width: 880
    minimumWidth: 400
    minimumHeight: 400
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
        visible: root.width < 800 ? false : true
        anchors.fill: parent
        spacing: 0

        DesktopNavigationMenu {}

        MainContainer {}
    }

    ColumnLayout {
        id: mainColumnLayout
        visible: root.width >= 800 ? false : true
        anchors.fill: parent
        spacing: 0

        MobileNavigationLayout {}

        MainContainer {}
    }

    DropdownCommandMenu {
        id: mainDropdownCommandMenu
        focus: isDropdownCommandmenuVisible
        y: isDropdownCommandmenuVisible ? 0 : -48
        Keys.onEscapePressed: isDropdownCommandmenuVisible = false
    }
}
