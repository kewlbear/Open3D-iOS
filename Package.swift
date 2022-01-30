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
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "png",
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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/Assimp.xcframework.zip", checksum: "0618e0b44ac90a72aa4541161ec9f2eb203b654629fa5e2a7478ee469de5df11"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/Faiss.xcframework.zip", checksum: "7c1d7fae9f320f04d5467c7017e334c016c93c5208c300fea0416c4ab963248b"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/IrrXML.xcframework.zip", checksum: "e600ea83f9c3af27984f45464b5ce0e73251b05c5c1416b6df9039d7a033a75e"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/JPEG.xcframework.zip", checksum: "6647108524e3d913d25ebb3b37709ccb0bbbb2395e021d469bdc791c0589a2c9"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/jsoncpp.xcframework.zip", checksum: "5e336e959121e375d1b56a3c8687982f59736ca3a468354f1bfdd73b09effc83"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "6066acd758f804d7f595534e4d00db903779384f7674fc93d0c7905c02ad5797"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "33f962667d0ee851833dce1dca9535d9034ed552fef97d5e79d7d7ed708c18f2"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "a49f36d4a06743501958f2b898db19306d46a8159c0fb0ce46cf7dbebb0fbee8"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "97c0de3330d2fa100f239b974e9ba2f84d67b807b8f55cc563237894b6112bea"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/libOpen3D.a.xcframework.zip", checksum: "6368e733f07776165351c2488618e876b0d89f1bcb269225d7e1486ba680eef9"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/png.xcframework.zip", checksum: "69dbeb327bf1a402ef101482f48cc9e149ba261905a146f03c2dab9724a4d863"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/pybind.a.xcframework.zip", checksum: "87de10b0100fe83016f938d94c5cfc999c96a71af8aee24b5402b66934ff722a"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130044531/TBB.xcframework.zip", checksum: "12f8e764f0f0cf7313ee3d53fd33409c482f878afebf8a38ece51ab129ba1ec8"),
        .target(
            name: "LinkOpen3D",
            dependencies: [
                "NumPy-iOS",
                "LAPACKE-iOS",
                "Assimp",
                "Faiss",
                "IrrXML",
                "JPEG",
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "png",
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
