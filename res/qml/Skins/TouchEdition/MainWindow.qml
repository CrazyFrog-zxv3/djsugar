import "../Booth" as Booth
import QtQuick
import QtQuick.Controls

// Touch Edition's isolated Android skin entry point.
//
// The first implementation step reuses the established Booth mobile layout
// as a child. This keeps the existing PlayerManager, decks, controls and audio
// engine shared while the Touch Edition-specific panels are developed here.
// The desktop skin list intentionally does not expose this Android-only entry.
Item {
    id: root

    required property ApplicationWindow applicationWindow
    property alias menuBar: boothWindow.menuBar
    readonly property var skinTheme: boothWindow.skinTheme

    Booth.MainWindow {
        id: boothWindow

        anchors.fill: parent
        applicationWindow: root.applicationWindow
    }
}
