import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.14

Rectangle {
    Layout.fillHeight: true
    id: navigationColumnRectangle
    width: 68
    color: "#3182CE"

    ColumnLayout {
        id: navigationColumnLayout
        anchors.fill: parent
        spacing: 0

        NavigatorItemBlock {
            iconName: "apps.svg"
            iconText: "Inicio"
            tabNumberReference: 0
        }
        NavigatorItemBlock {
            iconName: "file-document-edit-outline.svg"
            iconText: "Ficha"
            tabNumberReference: 1
        }
        NavigatorItemBlock {
            iconName: "clipboard-account.svg"
            iconText: "Pacientes"
            tabNumberReference: 2
        }
        NavigatorItemBlock {
            iconName: "calendar-clock.svg"
            iconText: "Agenda"
            tabNumberReference: 3
        }
        NavigatorItemBlock {
            iconName: "pencil.svg"
            iconText: "Recetas"
            tabNumberReference: 4
        }
        NavigatorItemBlock {
            iconName: "chart-areaspline.svg"
            iconText: "Estadisticas"
            tabNumberReference: 5
        }
        NavigatorItemBlock {
            iconName: "tooth-outline.svg"
            iconText: "Odontograma"
            tabNumberReference: 6
        }

        Item {
            Layout.fillHeight: true
        }
        NavigatorItemBlock {
            iconName: "cog.svg"
            iconText: "Configuracion"
            tabNumberReference: 7
        }
        NavigatorItemBlock {
            iconName: "help-circle.svg"
            iconText: "Ayuda"
            tabNumberReference: 8
        }
    }
}
