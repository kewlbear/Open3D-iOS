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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/Assimp.xcframework.zip", checksum: "050a688fbecdcc17c8430f2fdb97ae111c4dfb08503648ed723d3d64f715b99f"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/Faiss.xcframework.zip", checksum: "311e750cccff08551a68d57b697cedbe503144a2fd57ca37ffdc5d717ada085c"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/IrrXML.xcframework.zip", checksum: "539b6e0c2ddc084698132faa12693d91c165c0b464def7e9949c7d34875e8e25"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/JPEG.xcframework.zip", checksum: "43c40791afc0c1e83a9ca29471ceed43de1336b1b128d89c72450907900d1c2b"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/jsoncpp.xcframework.zip", checksum: "c0e1b3dcbf101ea78853f6e7ef98f8df5a6ebc31ba06e7a85575e1d35b70bce9"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "libOpen3D_3rdparty_lzf.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "6488fb65b20f150b545e7169ac71301cd5f73fb48f67367e4c383aa164384731"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "1112bee1ba551dbea47469db9ed924032e24d4ec81c2d73c8bd31ce99f486455"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "e54c65e67e9e29627316630a6c976f0d3e3672af868c684d7d170561fc3e73d6"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/libOpen3D.a.xcframework.zip", checksum: "69d460cba1e9c7e8e70327703a947b92062dd3f6a3210c571d3f3c7df5e49cdd"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/png.xcframework.zip", checksum: "0cb4b577e9d30f27ca7c2e8fa902fe483ce5076b910429e086eee6e37c531dc0"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/pybind.a.xcframework.zip", checksum: "pybind.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220125022137/TBB.xcframework.zip", checksum: "c1084e49f983a59869688a0fdea555b1ac79e79fab5e05b4d6e681de0d29c6d5"),
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
