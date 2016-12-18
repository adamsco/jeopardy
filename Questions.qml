import QtQuick 2.0

Item {
    Repeater {

            model: 6
            Row {
                x: 2
                Repeater {
                    model: 5
                    Rectangle {
                        color:"orange"
                        border.width: 1
                        border.color: "black"
                        width:parent.width / 6
                        height:parent.height / 6
                        radius: 20

                        Text {
                            id: name
                            text: qsTr("Question")
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }

}
