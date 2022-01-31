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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/Assimp.xcframework.zip", checksum: "54eaae9547ffc761a2de6bed843cda79c7cb4eeaaf633f612560f513acc0f0a1"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/Faiss.xcframework.zip", checksum: "0baeb45886e2a6d1542487f063f80bc24cef07599a20147b1afb40d558d7dbd3"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/IrrXML.xcframework.zip", checksum: "453d536acf795de3040c3f2a5216cf7ed8b7045be9c95db232f55dd34f720811"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/JPEG.xcframework.zip", checksum: "8f9ed218e2f23b4a10c78bd775ac3cae3864b7b4e177e97a2f03b41b3b348416"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/jsoncpp.xcframework.zip", checksum: "53c1a20175d7f87abdb62cd0b022bb38b7cded857ced1cfe7f2fe3f592dbb77d"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "aac9395eede0e9f059e1fcfd3b18f049f077e1486b89688d27f4d4a8e7f418d7"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "083ea1b64f6cca5b0554f49108d5aacf5f69c89266145de37ee604837b4d895e"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "714dedc82b76c8dc97c0a4801aca62383433822425357fca0b924abba86e398b"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "e33dd789859ba96905e3b8f8077c50993761385154606c3ae6c98677f60f9c90"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/libOpen3D.a.xcframework.zip", checksum: "fca753fdfca3a192304bdc1e57261e795fc2b9c38570591512691e191fdf68bb"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/png.xcframework.zip", checksum: "5affb9cc1f2187cc7bda69f7bf58da71c28310d1fe0efc678562241acef5bf71"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/pybind.a.xcframework.zip", checksum: "409e6e884d9099c2bc1d4e4802e10b742eddf58ec69bbf6698ae91e6d3288608"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131053146/TBB.xcframework.zip", checksum: "0fa830c8ad6a2a3528b219faca827374e8351fa0f4cfe6068b7c475460a716d9"),
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
