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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/Assimp.xcframework.zip", checksum: "3ee044845b06293bbb6fd966a7058dd9a166e373bf23212bd670bea96bd81d7a"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/Faiss.xcframework.zip", checksum: "646f665a318ad61c96b228309d14bea4e40190419957f388d09b7e3cd0b6dd97"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/IrrXML.xcframework.zip", checksum: "3e7b28ebac9eea6a77b6a397a740d6a4d0f558a812c9648521214cfe20ae219f"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/JPEG.xcframework.zip", checksum: "4cbc23f021785014f74ae9bc7c8b3691a5d964e0db97e887d56962fe62e8075b"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "b6cd692ae59ce8ec5317614f2837e4883743ca3cb9f5b2c335542d0ba3fdea48"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "81e22e72992d3c44bf4caf8cb2cb33e81253f1c035492ef9d28b815076c4470a"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "98892b36ed6dd5c04ce670d54c0afce07dd37f2ea1ef1c9fa008cee866a27123"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "b8184a07f1caf5d48d8e5586435cd98e535cac560ab6aac8bf32ba5245c1fdca"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "libOpen3D_3rdparty_rply.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/libOpen3D.a.xcframework.zip", checksum: "22c38087780b7d8f7580ec514d5a25124d8ad2f43221df6359445a9f0bc63ddc"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/libpng.a.xcframework.zip", checksum: "4b02f767040bf6859ae78544065fcd8d17d7ac87ba40619b96f2098138110621"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/pybind.a.xcframework.zip", checksum: "1b600b261ae2f6287b280bf6358a2dba3ac379738adeaa50cc4bfc7d2dfc79a8"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210402033837/TBB.xcframework.zip", checksum: "5712b034c2762bb6d3074f60b65eb4c9fc6af70b3f143005ed476ec1379e294b"),
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
