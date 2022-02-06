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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/Assimp.xcframework.zip", checksum: "149fd124b2581d011f3bbc89094f42e70a7f57b09cebf56bb6eb95b04fa77564"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/Faiss.xcframework.zip", checksum: "17a9ee3b631d1dc104525a1b82168ca4c432bc99e53bb354d2a93d064a204e95"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/IrrXML.xcframework.zip", checksum: "1f28d784287d71e203f2399d8be50286ed9f65705c94f6c4751623cc87b72885"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/JPEG.xcframework.zip", checksum: "1855b7a5f1e9a12c3e62aace962dc8b03978d5e95d91b4a5877155af147eacb5"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/jsoncpp.xcframework.zip", checksum: "16685c0cf82d4bf55dc151a68bd16f39da25b3c490b18b5bb03598260813b132"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "ef6b8444be1b8192ac809992ef3c612c7a9b2433575aed9c82b1226ba795548b"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "ab91c658d0a2b74decf31b41cb7e3b646e075617876b30194ac008070ec0f084"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "41c0c58bec4b24a4675046612a29919ce20c45e282afc692bda836923a56227c"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "016ed39e0faac000b7e4aecde513c81e24cae086bf27b3d6c8c1773b262ceee2"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/libOpen3D.a.xcframework.zip", checksum: "d48577e5319df093e39ca192b7b40e7b3cb6a528841d5018ab93046259279a8b"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/png.xcframework.zip", checksum: "0888b349a6bf034cf4f66a57180c25de93a64a2fc3125bd5231251f3602b08d9"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/pybind.a.xcframework.zip", checksum: "b408e1b47c9acf868b54efaa929afae8a69bac8906e717fb4335d8d8f01c4269"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131091120/TBB.xcframework.zip", checksum: "366d733654fd04bbd4b3215984162fc5ee3187257ad4917646a98a4af697c9b7"),
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
