import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Rectangle {
    width: 800
    height: 520
    gradient: Gradient {
        GradientStop { position: 0.0; color: "#060608" }
        GradientStop { position: 1.0; color: "#0a0a10" }
    }

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 25
        padding: 40

        Text {
            text: "🚀 Bienvenido a Atomic Linux"
            color: "#bd94ff"
            font.pixelSize: 32
            font.bold: true
            font.family: "FiraCode Nerd Font"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "✨ El sistema operativo Linux moderno para usuarios avanzados"
            color: "#e4e2e8"
            font.pixelSize: 18
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            width: 400
            height: 2
            color: "#bd94ff"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "🎯 Preparándote para un sistema Hyprland optimizado y seguro..."
            color: "#717180"
            font.pixelSize: 16
            wrapMode: Text.WordWrap
            width: 500
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "✅ Sistema de arranque: Limine (rápido y moderno)"
            color: "#4ade80"
            font.pixelSize: 14
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "✅ Entorno: Hyprland con Wayland nativo"
            color: "#4ade80"
            font.pixelSize: 14
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "✅ Seguridad: Sin rastro del sistema Live"
            color: "#4ade80"
            font.pixelSize: 14
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
