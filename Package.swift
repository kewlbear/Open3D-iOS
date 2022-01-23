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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/Assimp.xcframework.zip", checksum: "1fd17d2485bdc49c101a736fb7c669bbf38903ecd3db8668414af23013ac40e2"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/Faiss.xcframework.zip", checksum: "18139df40466a64e48e3e540b0f5520f19b1b7681259450a68a65f68c79f2467"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/IrrXML.xcframework.zip", checksum: "578342b741cba2dc42959b86458d240f1a65725a366d5a9a116f9c2f25488756"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/JPEG.xcframework.zip", checksum: "5461dac3e521a1720ab80bf634390e073e21240dea7d7968969d55cad7aa8c83"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/jsoncpp.xcframework.zip", checksum: "a6718e27ddb3b2781f2cebffee7531180f5eaaefef74fb085f4fe5d470f6c986"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "libOpen3D_3rdparty_lzf.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "db0df1060a77e59d33a010eaa4e6d614e37c680286fdd34c0a0e8d5bc421bb36"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "5c430331f8f1a5d6deaffe2ddcb1dcc189f4595a425d2eff7faf3022c0443610"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "9eb786f194cf08844f4bfbfed796110ed2aa9bc2e1ae2d7a7327cb099d7c0d06"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/libOpen3D.a.xcframework.zip", checksum: "libOpen3D.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/png.xcframework.zip", checksum: "a5c10e0a8a15789a4b26eb17862f6240782b21368f8e9caced05f0b5ffa89115"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/pybind.a.xcframework.zip", checksum: "pybind.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220123071609/TBB.xcframework.zip", checksum: "000d0e689c14064d49db09419d4982ed6267e802ae30a75d1fecb3db00c513d4"),
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
