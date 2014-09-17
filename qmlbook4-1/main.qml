import QtQuick 2.2
import QtQuick.Controls 1.1

ApplicationWindow {
    visible: true
    id:root
    title: qsTr("Spaceships")
    menuBar: MenuBar {
        Menu {
            title: qsTr("Main menu")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
            MenuItem {
                text: qsTr("Info")
                onTriggered: Qt.quit();
            }
            MenuItem {
                text: qsTr("Service")
                onTriggered: Qt.quit();
            }
        }
    }

    Rectangle {


         //color:"#D8D8D8"
         id:recroc
         width: root.width
         height:root.height
         Image {
           id: rocket
           x: (parent.width-width)/2; y:40
           width: recroc.width/3
           height:root.height/3
           source:'qrc:/spaceships/images/spaceships/green_storm.png'
         }

         Text{
             y:10
             width: recroc.width
             horizontalAlignment: Text.AlignHCenter
             text: qsTr('Green storm')
         }
      }
}
