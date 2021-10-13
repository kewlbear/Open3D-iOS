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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/Assimp.xcframework.zip", checksum: "69bfe8a8716dfc8db445b638d138fc5e3f76d3803ea2c00a157e6975910426c7"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/Faiss.xcframework.zip", checksum: "61ef5a16997d65d679de1f75b58bf746dc421629ce1efbcfa0df87a947152d3c"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/IrrXML.xcframework.zip", checksum: "ea0cbb3a44f1ee55e47f82f4c9a76164d0595ed2f0c7c06b7a48a887d1bbbb18"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/JPEG.xcframework.zip", checksum: "b5f42e0257f79b32afa9d580c387590def829f715770f38f3261323b291890e6"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "b4eb730d6aa1d0fb39823886e3ca8ee59ac78bfc5342a9c4f4f615302cb75dc3"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "538e0298b115cff26c45223ce00ab8f34f49d71146c87cce253950c52eac2274"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "3f363b8051416e8d33f82298b129becb58d6a48f7d7bbcb3fc62a25c4ceed8fa"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "78200a42fb3ced6a4c093c317dadfb73d8b86a68194831c5fbb402be449a4ff9"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "b9b7e717db97ea5460f87ef22e7da149e2536cc6143ae3895b2609d7466211c5"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/libOpen3D.a.xcframework.zip", checksum: "libOpen3D.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/libpng.a.xcframework.zip", checksum: "50da5e0e7e2a74d64e2f8616ccff9677cd6dd3fa94bb2c95ded0b7f8cde2b713"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/pybind.a.xcframework.zip", checksum: "pybind.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211013030240/TBB.xcframework.zip", checksum: "3e3cb81e554fa43629bfdbd8b8eebc169e56ce6d6e49d5204be3d9c31a492925"),
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
