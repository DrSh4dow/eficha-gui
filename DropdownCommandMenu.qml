import QtQuick 2.0

Rectangle {
    width: root.width > 1200 ? 560 : 400
    height: 48
    x: (root.width / 2) - (width / 2)
    color: "#2D3748"

    Behavior on width {
        SmoothedAnimation {
            velocity: 500
        }
    }
    Behavior on y {
        SmoothedAnimation {
            velocity: 200
        }
    }
}
