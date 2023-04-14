# soloman.Controls  [![Downloads](https://pepy.tech/badge/soloman-controls)](https://pepy.tech/project/soloman-controls)
Controls for Qml. Dedicated to providing controls that are not yet available.

## Controls

### SButton

#### Example

```qml

import QtQuick
import QtQuick.Controls.Basic
import soloman.Controls


ApplicationWindow {
    visible: true
    width: 400
    height: 400
    
    SButton {
        text: "Click Me"
        color: "dodgerblue"
        textColor: "white"
    }
}

```

# Views

## STabView
This is a unique object type for Soloman.Controls. It provides you with a TabView.

### Basic Usage
#### Usage by creating tabs
```qml
import QtQuick 2.10
import QtQuick.Controls 2.10
import soloman.Controls 1.0

ApplicationWindow {
    visible: true
    width: 800
    height: 500

    STabView {
        anchors.fill: parent
        STab {
            anchors.fill: parent
            color: "lightgreen"
        }
    }

}

```

#### Creating tabs dynamically via qml code
```qml
import QtQuick 2.10
import QtQuick.Controls 2.10
import soloman.Controls 1.0

ApplicationWindow {
    visible: true
    width: 800
    height: 500

    STabView {
        id: sv
        anchors.fill: parent
    }

    Component.onCompleted: {
        sv.addChild('import QtQuick 2.10; Rectangle {anchors.fill: parent;}')
    }

}

```

#### Creating tabs dynamically via filename
```qml
import QtQuick 2.10
import QtQuick.Controls 2.10
import soloman.Controls 1.0

ApplicationWindow {
    visible: true
    width: 800
    height: 500

    STabView {
        id: sv
        anchors.fill: parent
    }

    Component.onCompleted: {
        sv.addChild(sv.url="textV.qml")
    }

}

```


## Wiki

The wiki can be located [here](https://github.com/deuteronomy-works/soloman.Controls/wiki)
