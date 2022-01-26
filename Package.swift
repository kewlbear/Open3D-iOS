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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/Assimp.xcframework.zip", checksum: "ef99f6b417f7c70dd28a0253db90083b20890eb5a500341cc8a4d37250f2155c"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/Faiss.xcframework.zip", checksum: "8958839349c62e03eafc3a538edb2daf53abfcf2a84e151f03dc502c9531fbe6"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/IrrXML.xcframework.zip", checksum: "9fa26c6c321ff178fc95059a434202cc1a164fd9e7a8abec2597d20b0f80ba0e"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/JPEG.xcframework.zip", checksum: "f7b5cb936899aaa2c843343fac795b4c040ea5a8aa8bd6aefcd42eeee228d504"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/jsoncpp.xcframework.zip", checksum: "34eec1cb511f60f22c008660ae77adf932d0012950d7525f81d1a90558eb290b"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "9ba65cb52441f58615f19ac1b789190b37210fb9422142ed6ffbc6507f1f3b9e"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "3980efecf74fb075ba38451a2d928ab9fda5b02954e11f28dccd28e438980b2c"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "b391ff7f548fb76a4a51ae71908e4666096a3e83a196a9b2bc9751df15a90229"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "ef60a852a6f584557673620596bb5972205f0ceb41fc9c70a31f1a96eba16d06"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/libOpen3D.a.xcframework.zip", checksum: "dbb8de7631518f1d91e75c0dcb4e2911e06392a7c10fe7be128d3a1b5c369bea"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/png.xcframework.zip", checksum: "3229946c846b19252792b12b5b4e82fa7026cf64ed5d573c34f3370ec551e143"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/pybind.a.xcframework.zip", checksum: "9ff857aab505136928066e838ca46e8c54c3a58cf643468e496bb5651da12b1e"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220126032433/TBB.xcframework.zip", checksum: "1151a9b0ac88498d83a48ca8f58bd24a22d27db60c42469657db3276a55a5753"),
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
