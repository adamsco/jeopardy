import QtQuick 2.0

Item {
    id:mainGrid
    Repeater {

        model: 5
        Row {
            //x: Math.ceil(index/7)*10
            y: (index%6)*mainGrid.height/5
            Repeater {
                model: 6
                //y: (index%6)*50
                x: 5//Math.ceil(index/7)*mainGrid.width/5
                QuestionCard{
                    width: mainGrid.width/6
                    height:mainGrid.height/6

                }

            }
        }
    }
}
