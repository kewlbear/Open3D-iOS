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
                "libOpen3D_3rdparty_jsoncpp.a",
                "libOpen3D_3rdparty_lzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "libpng.a",
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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/Assimp.xcframework.zip", checksum: "447014ea78ef354b98c48308b325206017c5fe9163e4c6506d0d7ca6ebf4209d"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/Faiss.xcframework.zip", checksum: "01f014b9ac65970bb222e2a9f12914311f302119be7468cbca210a05d3c0f2f5"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/IrrXML.xcframework.zip", checksum: "85c14cbbc96d4d0451ea2fae7a8ea68c5c3173621c08d24fb5b9f2ccd65ca7dc"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/JPEG.xcframework.zip", checksum: "d32c9b13245affbcfd30ad8d4c3f979ff95e0923b64d0d7de6403d7a54174b92"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "f1e4c0adfe4ebe3928dc49f1a56e1bd025aade4a00ca8aeb33f55b5a8a248d75"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "62bc2953787ea31c6c6f0fb13351deb7732ee11125e3e1760e4604ccf9880956"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "ca10b0fcfaf6072b452e79590f9cbcfa9d0bc7f6ce84d5d77209c6401eb00bc3"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "549d3ab1a050c2f0d15d24ed128cce3dd3c9432d30c42240dba33d6ac73596a6"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "115c4811cea70dc0d1d9b9e30673ca5bc3025357f9cd89f3c56628d260ed258e"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/libOpen3D.a.xcframework.zip", checksum: "4686ee4dd285ba361a9210f985e33669233856cbaff1274b050b2f56bd04a7a6"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/libpng.a.xcframework.zip", checksum: "2a47692a3a2982da76fa07d9b5991be1225a5167d897f38d965b52590933ecb7"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/pybind.a.xcframework.zip", checksum: "a222855bcc403386c5954089e71f19a1c7c2bee43a054ba4dd15ec680afa6cdb"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211021001947/TBB.xcframework.zip", checksum: "9224847567161802f31a4e7e56161036e15f9b9280a5bea27f3181cfceaa4ed9"),
        .target(
            name: "LinkOpen3D",
            dependencies: [
                "NumPy-iOS",
                "LAPACKE-iOS",
                "Assimp",
                "Faiss",
                "IrrXML",
                "JPEG",
                "libOpen3D_3rdparty_jsoncpp.a",
                "libOpen3D_3rdparty_lzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "libpng.a",
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
