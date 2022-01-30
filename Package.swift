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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/Assimp.xcframework.zip", checksum: "da569d44e5af521aa06b336241914ed0f21ed256387418a3d6f119707a472c48"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/Faiss.xcframework.zip", checksum: "5292b6e1eeb142335eee02da77a5d36ef983dfef49629c6272e32a7fe6e94851"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/IrrXML.xcframework.zip", checksum: "94fafa6efdf3f353e17d3ad212d709f4283ef606cba78d9a7df1ad49880aa082"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/JPEG.xcframework.zip", checksum: "ca7fd0c0b669a7a04c11fa1a0d3d3971167c43ecb26c2993a4a2e08e56aeab2e"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/jsoncpp.xcframework.zip", checksum: "c9a0db15babb8d062da787f1c42b188a5eaf65ad53afaf7fb7786789b9600f3d"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "d5f95ed3e490857bec8c7737aa974f1e5000eb0a90e11838143bdc59e806032b"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "ded59547b5dcccf53911e3908d267b556a60dc03c34f58a6758d2a4c63909ff6"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "3c647ab1f3d7d0d388c9ad68d3f93f94deb04f268c42b38a30fb35749e7563b5"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "9c4ab7dc227ddd5bc74fc022b88e53a0e01ee46906beab4965506bc542e7b033"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/libOpen3D.a.xcframework.zip", checksum: "c7ec5b4ff264b7544f26948b49d82446f266d808fe1b75c68420a47d332c25df"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/png.xcframework.zip", checksum: "45595c91c21dc59a3e03c631ad85f70153b8ed73c94197ea17ad5da136f5b573"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/pybind.a.xcframework.zip", checksum: "6a676020fcad75a375558f6157ba20e6a578c1e633482f120c743db576ad1cfc"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130091420/TBB.xcframework.zip", checksum: "c714e8f601c05f229d20e99495b3544515e51e53a800d976da6f03dca3baef9f"),
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
