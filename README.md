# Open3D-iOS

Swift package to use Open3D in iOS apps.

## Installation

```
.package(url: "https://github.com/kewlbear/Open3D-iOS.git", .branch("main"))
```

## Usage

```
import Open3DSupport
import NumPySupport
import PythonSupport
import PythonKit

PythonSupport.initialize()
Open3DSupport.sitePackagesURL.insertPythonPath()
NumPySupport.sitePackagesURL.insertPythonPath()
let o3d = Python.import("open3d")
...
```

Above code requires `https://github.com/pvieito/PythonKit.git` package.

See Example directory for more.

If you want to build XCFrameworks yourself, see https://github.com/kewlbear/Open3D.

## License

MIT

