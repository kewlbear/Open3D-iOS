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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/Assimp.xcframework.zip", checksum: "8c55fe32b5a9003e1e3fae17b3fc7e28cb40c78888d512ff750bbe24ccc0135d"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/Faiss.xcframework.zip", checksum: "b6e5093de0243ad26b12d5c93f33ff8f67b571e48722b1dece6ab34914f9bd25"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/IrrXML.xcframework.zip", checksum: "702d4f1ba8d0a1018b62276f735c0cc328e623f72e40b1ffd1f03670cca8ab9d"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/JPEG.xcframework.zip", checksum: "26022ddabee2cffaf3a546dc9381553e1ae54a531eb76d1820cecf86dbf2bb43"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/jsoncpp.xcframework.zip", checksum: "e9c6b37eb62dc7b6e3eab447b00049807028ec8be0a443382909a92ff89f68ae"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "bc5f9b40acc98bb58dfe734ec3c42e576a167257671385b16ed2861d3d28852c"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "aa150def97bfe6b25823d002317e453a9fd9dd9b6931ab58df74a2c5a5898153"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "d440a66db4d9689a81cb3c4838799053fc07b8a5d4a84d8aee599d49b6c7115f"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "c8b04ca40cc075899dcfb72d916a5b751ddbc2cd8a7ee6a5067bfe5312e0cf46"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/libOpen3D.a.xcframework.zip", checksum: "266d335772e2cd2dc4b555f677844a693a6f226fcb64ef25d8826e4ae5c7b386"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/png.xcframework.zip", checksum: "447b74917aadccbbbf0c1fde5e66ffd8ef40d5329741fb16adfc5a933401a2da"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/pybind.a.xcframework.zip", checksum: "db1139c126b221095d805159a6819f1288c0a1323205260194e069a6f2a3ae15"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206060353/TBB.xcframework.zip", checksum: "2f31fa6b5881569131261dd644e689fafa35993e6770beed61775f1c65813afe"),
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
