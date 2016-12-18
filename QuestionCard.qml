import QtQuick 2.0


Rectangle{
    id: padding
    color: "transparent"
    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button == Qt.RightButton)
                padding.color = 'blue';
            else
                inner.width = 0;


        }

    }



    Rectangle {
        id:inner
        color:"white"
        border.width: 1
        border.color: "black"
        radius: 20

        width: padding.width*0.9
        anchors.centerIn: parent
        height:padding.height*0.9
        property string textVar:  qsTr("Question")


        Text {
            id: nameu
            text: inner.textVar
            anchors.centerIn: parent
        }
        Behavior on width {
                PropertyAnimation{
                    id:animationX
                    duration: 300

                    onRunningChanged: {
                                if (animationX.running) {
                                    console.log("Animation start");
                                } else {
                                    console.log("Animation stop: "+ inner.width);
                                    if(inner.width == 0){
                                        console.log("Restart anim: "+ width)
                                        inner.width = padding.width*0.9
                                        inner.textVar = '500p'
                                        inner.color = '#eeeeee'
                                    }

                                }
                            }
                }



                //padding.width: 100
        }


    }

}
