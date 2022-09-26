// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Open3D-iOS",
    platforms: [
        .iOS("16")
    ],
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
        .package(url: "https://github.com/raphaelmaguet/NumPy-iOS.git", .branch("main")),
        .package(url: "https://github.com/raphaelmaguet/LAPACKE-iOS.git", .branch("main")),
        .package(url: "https://github.com/raphaelmaguet/BLAS-LAPACK-AppStore-Workaround.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/Assimp.xcframework.zip", checksum: "6904cc87d6001158a44caffb854e32b30e29adb606f46472d5f8ce00b9721a24"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/Faiss.xcframework.zip", checksum: "1d223aee5b8c550f67e937da850e9a612fbfd358b2b9573b1c9e377f29e59a72"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/IrrXML.xcframework.zip", checksum: "fd60a0ad4f9330f7a6c9553621e0ba4cba1d678a89bbb2b5bfce730f8b39235b"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/JPEG.xcframework.zip", checksum: "1a9cd104c1600703a52d6917a7c2213417f6c456ccef06688580b9f6b8bd4503"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/jsoncpp.xcframework.zip", checksum: "350af41078a47080385fd60e5ecc2f33c2cb21a91557cb6b5233f38b306f50a4"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "a652bd2ab0c76623bb27268acbd0832326031cb2acc71eda4bc0e36849f64e84"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "55c0f90841fa15c7aa6e3de24e719936af7ea09bfe314eb3a1e44b97e0b49a76"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "a5f2cd5c510dc92920aba4d23e7ee771c43e6f1187930707bccaeeac00e76a57"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "9245503d7f4968faa706edce41da5cff5dd2330227234815d7b3855723e189e1"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/libOpen3D.a.xcframework.zip", checksum: "84915b1c787bc97f52b8cc39f51c9452a39ca6c5b83677cf422fd9e876e0794d"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/png.xcframework.zip", checksum: "0fd051316b200e5663d6d92e2efb24d0c012b417119733be9a498559cae173ea"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/pybind.a.xcframework.zip", checksum: "56ca201fd48af360cdaed7ba860dd6c668a8eb56ad7d5b297b816c0a30b29f5c"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220804014308/TBB.xcframework.zip", checksum: "9c5d9a4aa45ca15cec514a36faf10709a44af8e780441bf9c6d82a0fd0c64e60"),
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
