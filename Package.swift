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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/Assimp.xcframework.zip", checksum: "5d3d104e74330d1f94236980e4e46d20a3b86a6fc5b2fbb8a59bb423749a5c17"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/Faiss.xcframework.zip", checksum: "98ae176d11499d0be18584b28a60928e818b74d0174544c2e06246090d574a2f"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/IrrXML.xcframework.zip", checksum: "40b488d39a82d90e45ed2a6902c19efcd335956e8fb0d7a20409dca4d30f182f"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/JPEG.xcframework.zip", checksum: "9e6303185b6828a9d40b8554ec0c47c44e825de77a02c45d2bf2cfc566d5ec18"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "e43948254fdc7068764df60c7868b1c99e1df5f0643b6c99f1cfdd4599915e1d"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "57d7dc0de04d612b7060648b885c96c8475316b2dea1cf054711e3685a2fd246"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "1186c087787871636342da60875087111f8ecb4a7fa18405d0a44580690ac437"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "84dca5cf2c3235f8c79706f67d0bd4c6dbb96a72c5fc2f3facbc46479038969b"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "libOpen3D_3rdparty_.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/libOpen3D.a.xcframework.zip", checksum: "9386f8bd2a1733d926ab328c9b4be6b76d1cf950193b65460021caf981e5bceb"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/libpng.a.xcframework.zip", checksum: "376f66348c51705fb8acb5568b1b76e5e77df81adbac8a35ccfd558f1d091673"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/pybind.a.xcframework.zip", checksum: "e8d8a526eb60fff92f4a89f43d888105e977d081c666c59325bbf07e9d550f22"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402021244/TBB.xcframework.zip", checksum: "1ebd956c3f25c8bcf83f0ac7e6b768ead58cc4d65f338ade26e48c59cb612baf"),
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
