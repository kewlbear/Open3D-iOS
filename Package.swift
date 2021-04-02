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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/Assimp.xcframework.zip", checksum: "d97c305982c57a25c004666a46e52fe89474150ef2df4af85427c2703da3a370"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/Faiss.xcframework.zip", checksum: "b5f4a7d10ed50cc3bf98ecdfcf55ae9bd09fb2268c10195337e9f4f877f157cd"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/IrrXML.xcframework.zip", checksum: "23a8fe1db7f9cc4ff5a1176a8a78b40e1ad4c62f2f8f15a5bd39674c0dab6ab7"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/JPEG.xcframework.zip", checksum: "376f6292f881e5f5c846e67819237a99c35700e53ee119099afbd803482489bd"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "9ca45121dbdca61e60c848b63c974222e931cf2fa83057613440f8953981fb22"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "b8331b444eef27497c8bab4cdcbffe545f5b27e69a32a5a7df091265bb30d957"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "6b3d9d8ac76dc0810232bd9ef0dcc2f8ecc1daf6ebf6e9545bea96e0a4f7cc87"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "b9d80324684abde20908a7eadd5dd6891a7b92404e7694cbe5f4724b4484e86d"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "4f79aeb5edad5721c28000cfda46f4523bd0063cc686bc79a653667943fc340a"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/libOpen3D.a.xcframework.zip", checksum: "e0790aa80ba2a92e2f482f602057db0da33ef066d05c6ed701634d41d82cdceb"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/libpng.a.xcframework.zip", checksum: "8eba631c91cd00350d25050f238f2ac5003cf2ffe844c0a0890f7e72456e717a"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/pybind.a.xcframework.zip", checksum: "74d5d9119ea9e13a38b0dca4bb659b104b883bec88dc4ee1fbb161db6cd87ec8"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402055527/TBB.xcframework.zip", checksum: "49d974ca69305e2e7a728d71f49748309b154860cf82b8dc70ec251042525871"),
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
