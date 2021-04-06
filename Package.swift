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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/Assimp.xcframework.zip", checksum: "da39e15a6028ee60743b100716fe9e782dfd23164af0464582460ff79c6b7014"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/Faiss.xcframework.zip", checksum: "62cce10cc53c76a32a7251b0ff0e38ae50836b08d72f8d83a0a96ca91ef1834a"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/IrrXML.xcframework.zip", checksum: "e2f84400aa0d670df32930c5ba25d2ec4e5abd577b874a7a76f436455503d262"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/JPEG.xcframework.zip", checksum: "e4066987ea29f4c5792756e0cbd17a72adfddd735a169448f2c52f6f56898b9a"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "130ea36715748e9934a39375029d6d06baedf90b27bff6eafcb12c7cd49d59e9"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "7526210436030d99f93607868f404b8d8444f657654ffc654c36f1c69d68eb0b"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "fe8490716eccea223d11cbf5d7d9fd73b9cffdbdf4cbb820eef6d2d5cd69430b"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "436315835d6d215d75800b56034c0222cba5e87ed80ab5ab7c8ab23ee5ea2aff"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "02a7bbda505b0867666ae60ff3ee2147356e6c22423046c7a662437af28b88ab"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/libOpen3D.a.xcframework.zip", checksum: "1ec64de56c93fe91d2a3fc4a7c5e7f2e807f7ad63854176e2cf0474a4b592e63"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/libpng.a.xcframework.zip", checksum: "23e572f06a85df57c29aeb5be3efa778bbbd526c8bdb178098c6eb5c7effde8f"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/pybind.a.xcframework.zip", checksum: "f2fe6fbe5b5f97ded11897713814f04aa693cef5c231686e5dc50b2363d4471f"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210406092301/TBB.xcframework.zip", checksum: "eaf63f0677a3a6bac474cf35300b72a35e88e19917d1f0907183809e0f75e9c5"),
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
