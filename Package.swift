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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/Assimp.xcframework.zip", checksum: "1b4555d1f7bc6189ebdc18e6e39295f88c220621ea09f44505dd030a799ad882"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/Faiss.xcframework.zip", checksum: "d48591b2bb8f2f591bb43ac797e95902a9e7620d01b480be616696a270b0befd"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/IrrXML.xcframework.zip", checksum: "999c5b3fc180e820576969e49fb98bb65c3c36493e87d0683d518aff8f11610c"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/JPEG.xcframework.zip", checksum: "4e64da5b61b5e5c45442f2cbd8db0bb55b6f4706489e512c001805a229bf1eb2"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "288ea84a52f463677ba09c5ec607bf3ae453efbee3dfc9ed8325ef61fa438808"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "e72b9ee6244dbff5b19ba1f9e0da30d23f5e7b0958ac7d14349756f022b09018"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "d3271900d72751bf819fbfbc90030112097a99e8147f7519024a60ea3a4fd9d4"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "2f9196f358c467c91b7c32271e64190b61f11bfbdd69f3346639f5d3a0e5dcfb"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "f02042c3a8cd35155f9f9c4ca345bb2281020e6e602e01996dcb66b793a94121"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/libOpen3D.a.xcframework.zip", checksum: "8ad2dabf214e6939922a452e30f8f2100694adc9a4cbb32d91978ae95bb005d4"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/libpng.a.xcframework.zip", checksum: "4eee436bd7828c4d03ea18c18dbe3d354509d34a35d89cbaab188e2b59fb0617"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/pybind.a.xcframework.zip", checksum: "324d8ba61f3b352093d3afec109995b3d4dc017d9d5120d3c09fd310973c87ac"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1-20210331/TBB.xcframework.zip", checksum: "188af0dc25559044296984cbfc255530b5a8d6297e2d7e6f7aebddb960194cc4"),
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
