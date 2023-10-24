# [Lodash](https://lodash.com/) for QML

[![Made by Ukrainian](https://img.shields.io/static/v1?label=Made%20by&message=Ukrainian&labelColor=1f5fb2&color=fad247&style=for-the-badge)](https://github.com/GooRoo/ukrainian-shields)

This is a simple [Lodash](https://lodash.com/) wrapper for QML.
The installation process is not quite convenient yet, but stay tuned :) Maybe, I will update it in a few centuries.

## Installation

### Get the wrapper source

```sh
$ mkdir 3rdParty
$ cd 3rdParty
$ git clone https://github.com/easyQML/lodash.qml.git
```

### Get the Lodash itself

I've bundled the latest available version (which is 4.17.5) with the wrapper, but I strongly recommend you to re-generate it with the freshest one:

```sh
$ npm install -g lodash-cli
$ cd qml/lodash
$ lodash exports="none" iife=";(function () {%output% root._ = _; }.call(this));" -o lodash.js
```

### Update your QML import path

Please, refer to the [official documentation](http://doc.qt.io/qt-6/qtqml-syntax-imports.html#qml-import-path). I tried it with both local file-system paths and Qt Resource system paths, and it works.

## Usage

```qml
import QtQuick
import QtQuick.Window

import lodash  // import the library

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr('Hello Lodash')

    Component.onCompleted: {
        function megaprint(v) {
            console.log(JSON.stringify(v))
        }

        // and it magically works here who knows why:
        megaprint(
            _.partition([1, 2, 3, 4], n => n % 2)
        )

        megaprint(
            _([1, 2, 3]).map(n => n * 2)
        )
    }
}
```
Output
```
qml: [[1,3],[2,4]]
qml: [2,4,6]
```

## License

[Lodash](https://lodash.com/) library is distributed under [MIT license](https://lodash.com/license), so my outstanding three lines of code follow the same path: [LICENSE](LICENSE).
