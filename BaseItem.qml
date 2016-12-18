import QtQuick 2.0

Item {
    id: root

    Rectangle {
        id: background
        radius: 10
        anchors.fill: parent
        color: '#595959'
        antialiasing: true;

        Text {
            id: name
            text: qsTr("Question")

        }
    }
}
