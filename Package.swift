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
                "libOpen3D_3rdparty_lzf.a",
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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/Assimp.xcframework.zip", checksum: "2b161463b0175184c2532b9b5b433e63ed98f88a4b39e80dc837035cec865751"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/Faiss.xcframework.zip", checksum: "c39bff39ece59f118a2e1f7d84c0688d3b37138aa4798be5b9c3c6a64f9e7a10"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/IrrXML.xcframework.zip", checksum: "513e797936eb5efa7d55905f36a764a580c2879494f78cf93e6cd3624da63fa3"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/JPEG.xcframework.zip", checksum: "d8334010a38d2d3d0e97157b8cebcd516c4b06cbcc0036eba318afbb779295fa"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/jsoncpp.xcframework.zip", checksum: "708cb5b4d706efe31a6f70e6323af533b7a4769c07854e021eb21ddfe12bcc1d"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "libOpen3D_3rdparty_lzf.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "b7cd46210eb46b08d794107449c8f92a60e368eb803b90f6a4bc89c14722ccb8"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "2a0bc70bb9c3d52efcd47a32373e105a01f052c79f26eb5bf5ce34a64689c40b"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "0c730ea7169884bedec827fd04dc64131728e5aac8654f9a692b7533cedd198a"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/libOpen3D.a.xcframework.zip", checksum: "9c2cf6abdc90882db7ff46ad294311dd0aa4c92913cdd706f91d119c45efc871"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/png.xcframework.zip", checksum: "6d6ff79a46f8bef83857b2f50b2753155283ccd7d144f674ae2a5c6d53f8124f"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/pybind.a.xcframework.zip", checksum: "pybind.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123160749/TBB.xcframework.zip", checksum: "d45712847f4e84abc393d5b964cf47830a526046aa3b32b20e56b03e8f9ad8e9"),
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
                "libOpen3D_3rdparty_lzf.a",
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
