import Felgo
import QtQuick

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Window{
        id:win1
        visible:true
        width:800
        height:500
        Item{
            id:it1
            width:parent.width
            height:parent.height
            ColorRect{
                id:traffictop
                recWidth:120
                recHeight:240
                anchors.horizontalCenter:it1.horizontalCenter
                anchors.top:it1.top
                ColorRect{
                    id:redlight
                    recColor: "red"
                    anchors.horizontalCenter:parent.horizontalCenter
                    anchors.top:parent.top
                    anchors.topMargin: 20
                }
                ColorRect{
                    id:yellowlight
                    recColor: "yellow"
                    anchors.horizontalCenter:parent.horizontalCenter
                    anchors.top:redlight.bottom
                    anchors.topMargin: 20
                }
                ColorRect{
                    id: greenlight
                    recColor: "green"
                    anchors.horizontalCenter:parent.horizontalCenter
                    anchors.top:yellowlight.bottom
                    anchors.topMargin: 20
                }
            }
            ColorRect{
                id:stick
                recHeight:200
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.top:traffictop.bottom
            }
            ColorRect{
                recWidth:120
                anchors.horizontalCenter:parent.horizontalCenter
                anchors.top:stick.bottom
            }
        }
    }
    Window{
        id:win2
        visible:true
        width:400
        height:800
        Rectangle{
            id:header
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top:parent.top
            height:parent.height/8
            color:"gainsboro"
            Text{
                text:"Header"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter:parent.verticalCenter
            }
        }
        Rectangle{
            id:content
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top:header.bottom
            anchors.margins: 10
            height:parent.height*6/8
            border.color:"gainsboro"
            border.width:5
            Text{
                text:"Content"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter:parent.verticalCenter
            }
        }
        Rectangle{
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top:content.bottom
            anchors.bottom:parent.bottom
            anchors.topMargin: 10
            color:"gray"
            Rectangle{
                id:rec1
                anchors.top:parent.top
                anchors.bottom:parent.bottom
                anchors.left:parent.left
                width:parent.width/3-10
                color:"darkgray"
                Text{
                    text:"1"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter:parent.verticalCenter
                }
            }
            Rectangle{
                id:rec3
                anchors.top:parent.top
                anchors.bottom:parent.bottom
                anchors.right:parent.right
                width:parent.width/3-10
                color:"darkgray"
                Text{
                    text:"3"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter:parent.verticalCenter
                }
            }
            Rectangle{
                id:rec2
                anchors.top:parent.top
                anchors.bottom:parent.bottom
                anchors.left:rec1.right
                anchors.right:rec3.left
                width:parent.width/3-10
                anchors.leftMargin: 15
                anchors.rightMargin: 15
                color:"darkgray"
                Text{
                    text:"2"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter:parent.verticalCenter
                }
            }
        }
    }
}
