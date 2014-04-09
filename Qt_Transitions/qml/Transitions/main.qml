// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import QtQuick 1.0

Rectangle {
    id: page
    width: 360
    height: 360
    color: "#343434"
    radius: 0

    Image {
        id: image1
        x: 10
        y: 20
        width: 64
        height: 64
        source: "Apps-google-chrome-icon.png"
    }

    Rectangle {
            id: topleftrect
            width: 64
            height: 64
            color: "#00000000"
            radius: 6
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 20
            border.color: "#808080"

            MouseArea {
                id: mousearea1
                anchors.fill: parent
                onClicked: page.state=''

            }
        }

        Rectangle {
            id: middlerightrect
            x: 0
            y: 0
            width: 64
            height: 64
            color: "#00000000"
            radius: 6
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            border.color: "#808080"
            MouseArea {
                id: mousearea2
                anchors.fill: parent
                onClicked: page.state='State1'
            }
        }

        Rectangle {
            id: bottomleftrect
            y: 4
            width: 64
            height: 64
            color: "#00000000"
            radius: 6
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            border.color: "#808080"
            MouseArea {
                id: mousearea3
                anchors.fill: parent
                onClicked: page.state='State2'
            }
        }


        states: [
            State {
                name: "State1"

                PropertyChanges {
                    target: icon
                    x: middlerightrect.x
                    y: middlerightrect.y
                }

                PropertyChanges {
                    target: image1
                    x: 286
                    y: 148
                }
            },
            State {
                name: "State2"

                PropertyChanges {
                    target: icon
                    x: bottomleftrect.x
                    y: bottomleftrect.y
                }

                PropertyChanges {
                    target: image1
                    x: 10
                    y: 276
                }
            }
        ]
            transitions: [
                Transition {
                    from: "*"; to: "State1"
                    NumberAnimation {
                        easing.amplitude: 1.3
                        easing.type: Easing.OutBounce;
                        properties: "x,y";
                        duration: 1500
                   }

               },

                Transition {
                    from: "*"; to: "State2"
                    NumberAnimation {
                        easing.amplitude: 1.3
                        properties: "x,y";
                        easing.type: Easing.OutBounce
                        duration: 1500
                    }


                },

                Transition {
                    NumberAnimation {
                        easing.amplitude: 1.3
                        easing.type: Easing.OutBounce
                        properties: "x,y";
                        duration: 1500
                    }

                }
            ]

    }

