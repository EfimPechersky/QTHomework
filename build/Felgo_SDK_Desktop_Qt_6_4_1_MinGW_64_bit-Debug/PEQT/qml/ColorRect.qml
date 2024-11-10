import QtQuick
import Felgo

Item{

    property alias recWidth: cr.width
    property alias recHeight: cr.height
    property alias recColor: cr.color
    property alias recAnchors: cr.anchors
    width:cr.width
    height:cr.height
    Rectangle{
        id:cr
        width:50
        height:50
        color:"gray"
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.verticalCenter:parent.verticalCenter
    }
}
