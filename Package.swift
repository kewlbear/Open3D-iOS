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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/Assimp.xcframework.zip", checksum: "a6a65d6b4215953bcae26f75bee5d47d49c30b08f8ba4537bf9b32c9757bcf23"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/Faiss.xcframework.zip", checksum: "967edc509c5d873661a413ab8c5027cdfe4eee7385e5ead3309f918bd122397a"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/IrrXML.xcframework.zip", checksum: "8b61273601063754d0a9166e9b21bd541c77f122d25c42bdf7db114a76072cbb"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/JPEG.xcframework.zip", checksum: "d67fe2e051742bd11b9b7f133f710c37e47123c6d7aa7e2ad778dd4e801fa9b2"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/jsoncpp.xcframework.zip", checksum: "256365c335f8e73f8262c3a94f585bb62c4ef74e1c3e775285f078c33abf42b0"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "023bf1332cdb299435586c0efad851bf73a0b0b22af7e10ffe66335e7ec43e0f"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "1227fbfedd2975e4575fb8ebd477f4892f09e0277e2fb27fe27fe87000b31a1a"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "e0be183cb58e6dc37cbc493c80223a0532cc53704be18991867e0a4e54bc3b57"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "2195ca7e116768fe9d6de70686d807f48fc49425401bd34f09e8cd6576e506b8"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/libOpen3D.a.xcframework.zip", checksum: "70d4c0e08eba0340b036c4c35a63f8153235d9e99250994455d4451784e23a0e"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/png.xcframework.zip", checksum: "0250df2cd826433de5a2766c8d5ae47979b2404c4c8d3a181e1c502f97a2f6ba"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/pybind.a.xcframework.zip", checksum: "9124a2611ffd68956b69791d68ff7c0f39db7496d833077d01e5f6be57096a69"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220131031249/TBB.xcframework.zip", checksum: "516d7681a057ededad89d39a54e50c54a517791ee3b9dfb311e7c4a262f000f1"),
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
