import QtQuick 2.14
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.14
import QtGraphicalEffects 1.14

Rectangle {
    Layout.fillWidth: true
    height: 56
    color: "transparent"
    property string iconName: "cloud.svg"
    property string iconText: "Item"
    property int tabNumberReference: 0
    property string iconColor: "#CBD5E0"
    property string iconColorActive: "#E2E8F0"

    Rectangle {
        id: hoverableRect
        anchors.fill: parent
        opacity: 0
    }

    Rectangle {
        anchors.fill: parent
        color: "#2A4365"
        visible: root.currentIndexValue === tabNumberReference ? true : false
    }

    Rectangle {
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: 2
        radius: 1
        color: "#F7FAFC"
        visible: root.currentIndexValue === tabNumberReference ? true : false
    }

    Image {
        id: icon
        source: "qrc:/icons/" + iconName
        anchors.top: parent.top
        anchors.topMargin: 4
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        height: 40

        ColorOverlay {
            anchors.fill: parent
            source: parent
            color: root.currentIndexValue === tabNumberReference ? iconColorActive : iconColor
        }
    }
    Text {
        id: textIcon
        anchors.top: icon.bottom
        anchors.topMargin: -8
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr(iconText)
        color: iconColor
        font.pixelSize: 8
        font.bold: true
    }
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: hoverableRect.opacity = 0.1
        onExited: OpacityAnimator {
            from: 0.1
            to: 0
            target: hoverableRect
            duration: 200
        }
        onPressed: {
            root.currentIndexValue = tabNumberReference
        }
    }
}
