// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Open3D-iOS",
    products: [
        .library(
            name: "Open3D-iOS",
            targets: [
                "LinkOpen3D",
                "Open3DSupport",
                "Assimp",
                "Faiss",
                "IrrXML",
                "JPEG",
                "libOpen3D_3rdparty_jsoncpp.a",
                "libOpen3D_3rdparty_lzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "libpng.a",
                "pybind.a",
                "TBB",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/LAPACKE-iOS.git", .branch("main")),
        .package(url: "https://github.com/kewlbear/BLAS-LAPACK-AppStore-Workaround.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/Assimp.xcframework.zip", checksum: "80df52d7d10ce5e7428810178c16bfef82e6fffb6f31e52d74f1b1e1aeb67359"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/Faiss.xcframework.zip", checksum: "cb7828addb61c438e5b781a4d3c3adb6118409cc98b7a56afca778857bef57e7"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/IrrXML.xcframework.zip", checksum: "4b5112176fba81d0bbdc7c4bcde24ac305eb62007f38c77dc46176181b35a630"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/JPEG.xcframework.zip", checksum: "5e7980d3cc9f0ceff9ca643c43e7843d57f034d320ef15b21d1bc1c1ff8f3c93"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "626607486d84ecbc4dad100115947e24e580e04a5e2192f11965c814f7694834"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "0a333a4c1d39ed30252c3abaecde19ebb17ecf1be82dc7c1b1ed63d466620afc"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "cb685bdfd0d3f01e8ee5db8c584a5d61bb0e0ba0cb7ea737a6cd8007d40d3451"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "2d3dc13f3403fccf8b70e643e003fbf8ddb4416cde78704e31d33fe33a26a764"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "40aeb5e11ae36663c63a8c6ab03c80300b50556a875ee56f860d56ab2b422919"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/libOpen3D.a.xcframework.zip", checksum: "9d6da1433474c49b4f3ed47106b5b71e9e4a4068f0887e4dc081daec3e87a075"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/libpng.a.xcframework.zip", checksum: "aa4b92822059dccbb7a026de6d12e512f707c4f6ad335ec0a3b98f2fe685d727"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/pybind.a.xcframework.zip", checksum: "31311c20da77caa14431cf0ab9a62e994797bd9f16ddffb6d5a1df7c9029ed3c"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021091043/TBB.xcframework.zip", checksum: "4c7511ec12d3d357dbdc51873ddc3133d83f25fffd321338f13864b5c7542faa"),
        .target(
            name: "LinkOpen3D",
            dependencies: [
                "NumPy-iOS",
                "LAPACKE-iOS",
                "Assimp",
                "Faiss",
                "IrrXML",
                "JPEG",
                "libOpen3D_3rdparty_jsoncpp.a",
                "libOpen3D_3rdparty_lzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "libpng.a",
                "pybind.a",
                "TBB",
                "BLAS-LAPACK-AppStore-Workaround",
            ],
            linkerSettings: [
                .linkedLibrary("stdc++"),
            ]
        ),
        .target(
            name: "Open3DSupport",
            resources: [.copy("site-packages")]),
        .testTarget(
            name: "Open3D-iOSTests",
            dependencies: ["Open3DSupport"]),
    ]
)
