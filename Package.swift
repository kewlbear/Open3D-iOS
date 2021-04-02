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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/Assimp.xcframework.zip", checksum: "e3fd4d3a170e36d5f3036109e61885d58bcd2fa157f21ddd6ae46a55a4c29478"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/Faiss.xcframework.zip", checksum: "da52b9943ceb2fd71a337c97179ab47f01421fbb879830df2f9aadd362ed0fc2"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/IrrXML.xcframework.zip", checksum: "672f6f5dd7f7fbec5fcb4e599cd946ee17c2291899331d4622bb93495d14738d"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/JPEG.xcframework.zip", checksum: "0608a408d164a20a26b8288b5160549e05974c0a63a6925a189941c0dd6b9730"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "bb8d977a85f18cd10b4f445ad29dc653ff5e3b2e24fe846a31f92d2aef70d39e"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "12e795f69b938798937b32fd4594632b0ede603a2a22005412fdf2683c5b0f32"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "678b89fc56953b92dcf019955918ef3173a04ee172f94f702e1524c661449299"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "b44d9840178bee6db5a36186c2db9017ce753b4661ce3dce6f3e459b4ebb280d"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "7fd4baf13300b7b31676d86113361e39b6d592da2d39e048f998b85920789bc4"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/libOpen3D.a.xcframework.zip", checksum: "b23e3bf42fe191b5dd70aa74901568a1f01aab827fc5e26aaf4d757f6a46b3ee"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/libpng.a.xcframework.zip", checksum: "fb560834dd402eb1d3c47e60e3c46a35a50dbe48309a624f731dce04fe0ed1e6"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/pybind.a.xcframework.zip", checksum: "0df914f5b54217e29e5d4f1e5aa239c8d34fd989dc34db44ce84a7bf0dfa0a63"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402072135/TBB.xcframework.zip", checksum: "93af58d4c350d020aab2de4918bb050d0ba8849776562d2750c8153a75981aeb"),
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
