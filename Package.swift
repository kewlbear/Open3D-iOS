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
    ],
    targets: [
        .binaryTarget(name: "Assimp", path: "Assimp.xcframework"),
        .binaryTarget(name: "Faiss", path: "Faiss.xcframework"),
        .binaryTarget(name: "IrrXML", path: "IrrXML.xcframework"),
        .binaryTarget(name: "JPEG", path: "JPEG.xcframework"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", path: "libOpen3D_3rdparty_jsoncpp.a.xcframework"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", path: "libOpen3D_3rdparty_lzf.a.xcframework"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", path: "libOpen3D_3rdparty_qhull_r.a.xcframework"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", path: "libOpen3D_3rdparty_qhullcpp.a.xcframework"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", path: "libOpen3D_3rdparty_rply.a.xcframework"),
        .binaryTarget(name: "libOpen3D.a", path: "libOpen3D.a.xcframework"),
        .binaryTarget(name: "libpng.a", path: "libpng.a.xcframework"),
        .binaryTarget(name: "pybind.a", path: "pybind.a.xcframework"),
        .binaryTarget(name: "TBB", path: "TBB.xcframework"),
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
