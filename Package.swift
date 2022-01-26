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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/Assimp.xcframework.zip", checksum: "949f3545581b2ff8e331f6dfc50f4111e625a1f0056da3e2fd649534aa1b28a7"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/Faiss.xcframework.zip", checksum: "4173e995f5b908daae52f5338ab490d98217cf49759e550253b553024e73526f"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/IrrXML.xcframework.zip", checksum: "0c9a3d2136baa085874c5ffedbc02729cd4c258e2aa93ce2ea77b7b1926c72f8"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/JPEG.xcframework.zip", checksum: "7bb9a3f1e987f5c754f81958e07580b12f7f6371ee5d9a36b8b931bc0b87a30d"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/jsoncpp.xcframework.zip", checksum: "52555f8a881a18f0154bec1bd8729b37a6ade4070bf3f552376223d740dc9ad9"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "libOpen3D_3rdparty_lzf.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "cca2d25c68f16b3c2adfc12274e2b7756f3503ea7998ccab957b465c83c721b8"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "51c5be1bc7319bac95118b7c086acf65bfc1fe0d860da0af3113aa774657c4e6"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "f0b24e0b2678f659a08d91203fe2e05142d37be99ff8e6b96aba7203b4b5390e"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/libOpen3D.a.xcframework.zip", checksum: "22168a59f7cfa91eac36c1b4c248024b3cd6141af50fb55b1c387f20d446113f"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/png.xcframework.zip", checksum: "d713a2c1b1583835e347603af933096d0d2c2668d4e7efbbe9eb7927830ea98f"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/pybind.a.xcframework.zip", checksum: "9e6af682321534a681fbf404c22c4046872b7efbb97a2246c2986d296a2acb0c"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125234313/TBB.xcframework.zip", checksum: "de8e69de2a4ce9cc007320eb785b8355e4dc799650f3c3b1af5f5b106b20842d"),
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
