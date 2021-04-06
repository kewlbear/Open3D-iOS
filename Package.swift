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
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/Assimp.xcframework.zip", checksum: "a1ca410eebba85854e0dac49dfb1ccb5123b2705c9912548ed2465e44c3659b3"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/Faiss.xcframework.zip", checksum: "fd0709944f16b1f3e72e7b2dd4e1da6b46b12690bee335db9681ecdf1e201dc4"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/IrrXML.xcframework.zip", checksum: "3f40c9fb60d63db34f01e91a6bb28b9c05a829184b4a03d2339d595861abfe1f"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/JPEG.xcframework.zip", checksum: "91c32ab6518ab9809f02b3c50d2cf372f6bbb7d608d6833f481f76f1e1532347"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "13ddbbd437a53326d84df72a83e580a0f6bb5430c579340ae8d5c268ab43c8a1"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "6ff755c8e186ae6e8b74c9c5c08c2f214a179973260e1bbf92dc1948d0a5af3e"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "a6af7bb3ecaf53c2dd6ff85bf478af29d4f4440e1012c72a883de97ed3920824"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "d3ed881c8d830a8daf73cdaf3d22afce8d9e29bfaeff188c3dd48ce25edc7643"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "bf8b73655165934559218558437d60fbe38076253b3016a57fc26c113817524e"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/libOpen3D.a.xcframework.zip", checksum: "8ff8a652c9eac737a80a793b29dc89ce60fe6581f1f19d827d100570eed4dbb1"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/libpng.a.xcframework.zip", checksum: "32ef1ade4564dc42b8bf198f3d34516b98fe8c79f974b0d0359c016d74a4b271"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/pybind.a.xcframework.zip", checksum: "eb0942bb6113a23302311c3becc07e1cac619185571ce8e97e92a9d773042fe1"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210403073822/TBB.xcframework.zip", checksum: "e41b1fb09dceca160c7e3d06cd25c20f13f64a8b5f4d2d0aa806ba03b5e32370"),
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
