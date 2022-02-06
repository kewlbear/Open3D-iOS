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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/Assimp.xcframework.zip", checksum: "cb2b4d91af98e2481d9f473c7d09e79e5fa728fc6b444b9200deb6c804a0a477"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/Faiss.xcframework.zip", checksum: "4ca48de4d65fd217c0d6388d15e89cbb9d0f005e83249778e56012525283d947"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/IrrXML.xcframework.zip", checksum: "55f84bc1c9a81af697d7ad04486350a710afaa11468e1e497e6c28ef37c0e6f4"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/JPEG.xcframework.zip", checksum: "53d141000084f1e0b4165d65630708e839ebb110f3c1e37ee9ed8039a1956886"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/jsoncpp.xcframework.zip", checksum: "7943e0adbc72969478204592105c6f979ee9210ac49b5083086dac133867931e"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "3f21a4d26f8a5342b22d02cd72aa985939fa25cfcc59ca50df786b839590d96f"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "1128c1e68ea26d3cb4c0e470366684f040e58875632a462854254e5d626dc848"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "6f09736638b2fea8510ec4d1fa066a5fff4cb58140ee65fbde4196e1410f5bd3"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "3ca5e242c33745ff278f5eec25bcd2a5ab26ced6bd23e0c292f0fdb8f0d17013"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/libOpen3D.a.xcframework.zip", checksum: "0aca86e0f3bcdd99dc051399ffa2ab3f95bc99d601e918028a85c20c23e038a0"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/png.xcframework.zip", checksum: "994d13b7e89e4767c6d0942e82a6c6dc9a927698ee1644524d22967382d60d99"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/pybind.a.xcframework.zip", checksum: "e37a2b02ac5f09d0f5a6d051307e662fd03f692cb28610a3bcd3e15c33daeb22"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206023744/TBB.xcframework.zip", checksum: "a75134d02719ee8fd647b69e52ea99b08bbdd3294195131ac92da99f247f131e"),
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
