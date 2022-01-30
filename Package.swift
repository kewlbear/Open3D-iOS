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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/Assimp.xcframework.zip", checksum: "b2f21f234f51ec2142f2630515044c6feb3140a608257159d622ee2b18e69b9d"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/Faiss.xcframework.zip", checksum: "c8301408e0997edb1cb1f194df61f115bdc85160c78c8c451d8e4cfbf7b82d15"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/IrrXML.xcframework.zip", checksum: "89d58c772ad221b2e8e27b1a1fdb9dc24745e87bc0e1669109b677cae6e329f8"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/JPEG.xcframework.zip", checksum: "a6d1b8a5889ecf6b738f222e1a6b8e7282b82160d59cfe5543c98f40a4eb2665"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/jsoncpp.xcframework.zip", checksum: "b19b127790c60ae58302654a0868b5a356a8e0cf5b120d429cf9e8413cdefd36"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "e6c5ccef45063640c16bbc9abf6fc6951973f159d2a3aca489d6ad63a801568c"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "cccaa59f50964a9ceae24963ca2f9db32a0ab85f5f7ba0ceda06dc350a56753d"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "32334851095773ccf330173eca01e9eecf21038af4e03199bfde86bcea85e71a"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "f088f0804d8dd17f980421675524080577f351c372a0c8fc7ea19e3fda4e4e44"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/libOpen3D.a.xcframework.zip", checksum: "fb226c826977ce4e7558c70f7cae76eccde60687318a1ce3241ca3f8191238b8"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/png.xcframework.zip", checksum: "9896b8671f2f4eefbf0dafe36d63478c09b1306acf3ba8cda3f3a18c23a710fe"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/pybind.a.xcframework.zip", checksum: "632a9b6f3366e73927f5669cb5fa76279b44a0af152bdc04e41df6864d756143"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220130165142/TBB.xcframework.zip", checksum: "270b7e564b1cea1985d0f08b6de6efcbcc652392296bc4fb7915ca0ad3d05c1a"),
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
