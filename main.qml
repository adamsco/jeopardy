import QtQuick 2.5
import QtQuick.Window 2.2




Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        width: parent.width
        height: parent.height*0.2
        Text {
            id: name
            text: qsTr("GameTime!");
            font.pointSize: 30

            anchors.centerIn: parent
        }
    }

    QuestionGrid {
        width: parent.width
        height: parent.height * 0.8
        y: parent.height*0.2
    }
}


/*
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }
}*/
