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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/Assimp.xcframework.zip", checksum: "a15382facdded78d267ba1786659b887cf29397fd3efaca81b1d42713fc4593a"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/Faiss.xcframework.zip", checksum: "ae0bf061428d5845afa7ec291c0fa36a0d8f9dc94ec3310beea1034582379c28"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/IrrXML.xcframework.zip", checksum: "02717796e2ec6654e9354d87024b3265a9fdfad9005c928d68adf7efb82b2643"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/JPEG.xcframework.zip", checksum: "2736f59e4023e467f9b907742660f2c487fddc26cfcccced1e1989a06fdfec7f"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/jsoncpp.xcframework.zip", checksum: "cbd0723eccd251c773b7ec2e1e7ea13e300c3718e8a8b862e7d794c7a0480c7e"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "3c779b25f3972b16a52f0c3bd83d22422224196271db7f8cbb2cc84039cabf93"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "e293838fb2e4351ef0a656b4d83735a753292e8f0d43c8e89b47a145afa04a0c"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "db7f93168e31688ece98e05cb020e148e60269bba42c0fa121aaddf07b8115d1"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "a1aeca12d3ec3df401696a856c606b22e3de311f9c1c5af04913dacd02b5761a"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/libOpen3D.a.xcframework.zip", checksum: "01d958ca81e2fe4fe72e67743937fe7ed1c755179da02919a7ea7be9ac0b9424"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/png.xcframework.zip", checksum: "639c7887674db16b7a41de488d2f143fb80f46136078eb4959c39db16c220fd8"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/pybind.a.xcframework.zip", checksum: "e8cc78e942a9053959043cc9e44caa7d4d46d0fa6ff6e94077bdbb29dcb9e7f2"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130133238/TBB.xcframework.zip", checksum: "366407202bd95bf80bc68a01466ef21dd7f015f7ef53239675185fc5045fec08"),
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
