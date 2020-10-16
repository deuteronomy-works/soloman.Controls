import QtQuick 2.10

Rectangle {
    id: basev
    anchors.fill: parent

    property int currentIndex: 0
    property QtObject currentItem: this.items[currentIndex]
    property int count: 0
    property url url: ""

    property var items: [QtObject]
    property var secret_items: [QtObject]


    function addChild() {
        var mComp = Qt.createQmlObject('import QtQuick 2.10; Rectangle {property int index:' + basev.count +';anchors.fill: parent;color: "transparent";visible: index == parent.currentIndex;}', basev)
        basev.count += 1
        var comp = Qt.createComponent(basev.url)
        var obj = comp.createObject(mComp)
        secret_items[basev.count] = mComp;
        items[basev.count] = obj;
        return basev.count;
    }

    function removeChild(ind) {
        var mComp = secret_items[ind];
        basev.count -= 1; // decrement count
        mComp.destroy();
    }


    Component.onCompleted: {
        var child = this.children
        var lent = child.length

        if(lent > 0) {

            for(var i=0; i<lent; i++) {
                this.children[i].index = i
                count++
            }

        }
    }

}
