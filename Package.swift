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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/Assimp.xcframework.zip", checksum: "da29914852c4cd3fcb0cd4268c931724ca7cf97c3a87dfe7e1c77135c21f0ec3"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/Faiss.xcframework.zip", checksum: "5722b26f35eb895170824e693662681d73dc20dc065db549aa7bf60c268ddcad"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/IrrXML.xcframework.zip", checksum: "46f9c547c98e625f1423c81acc8eb16910380380771c39a20403e3ba26f2f3f2"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/JPEG.xcframework.zip", checksum: "60940cccfccdb8ec927ae571c88a4204d5a989709a00773e5899ddb4b8257fb3"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "73152af5488bbff7306d9ae57da643306b2f4bb8f526e45c218d9e4f0a34495e"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "772299e26aed4762d5c6203ee2fc35a6a4bbfbedefa83f4f672c669ce45f94da"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "858f8d59989548d39dbb0853322594cc9472f3ca22f88a3019ca54c388485592"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "a727f7c08a2ae78a566fcd01f7ba5d5abc50d02fa0f359953e1a17f91ef4a9d7"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "78b710cf934e49e718c880317105cc423cfe8fa513981e0149f4eb2f129e71d4"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/libOpen3D.a.xcframework.zip", checksum: "e157cf57f4663cf098f95dfaa0d45d5d36a996d76ba7e7f548258b4b6ed9e281"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/libpng.a.xcframework.zip", checksum: "772dad0dafbf339dce468465281ff04425d2a56869b2cb8b5a95f33317ffb995"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/pybind.a.xcframework.zip", checksum: "bbec3a56841f292db7542b1e98b648e17cdfbf3d8b72a01a3f7df1f1fef17837"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403043902/TBB.xcframework.zip", checksum: "2cb4e21d2c0e26a9c2e42a35bfacf79e1f211cbba41696970e2d1dea72ba7e94"),
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
