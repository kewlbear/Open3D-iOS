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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/Assimp.xcframework.zip", checksum: "b1842c20c86b76dee93f0c261db9ff566ab5406829a492de807afe5796e8b634"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/Faiss.xcframework.zip", checksum: "247d8a9baf319ffa5560bc1fa6db12f4ee06eaee0f9a236a1e5a37090a7585d1"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/IrrXML.xcframework.zip", checksum: "82c4d5423bd624646ffef8d8f2abf706783429c6aa12a111a6c5227081a0b895"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/JPEG.xcframework.zip", checksum: "1fda8789353542cafe32c862d4c0c03df2de9fd1bee60164b4ef4fded69d0622"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "6bf5310308d4caf6bc7643ff2ad6897bea91041343a34fa767ae1f69e54ec371"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "e2df97accfd274ef92931cab1cc2ee06064a55a1bfb9f3b6b1ea21a7eec23edc"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "0e94260e4aeaad5267652fe06d7df27f7516e24c5958aa984ad58803c5548bf0"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "e45c5ad08001867e9a872f912e36b1351dd5671028eb6202e4dd15a29a0d16cf"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "e35bc5f4d9aa55b67c5abe6ad8b249309911837b8084bffcce27a1498a7537e5"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/libOpen3D.a.xcframework.zip", checksum: "6a448c80259f3a79e7c5bfb90b5c4da1cd7c4bf9f198bb4cc9d40fef4fc78309"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/libpng.a.xcframework.zip", checksum: "568e366ddcf036b7df70d304fb8c67616de537bf7360fe66321d6d70e5698b1e"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/pybind.a.xcframework.zip", checksum: "1c6af0538e920d9ad877b50ac0c35341ca21b50885823c0845e92af7e0fe45b3"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.1/TBB.xcframework.zip", checksum: "0a500b83160e1b3d61e947231b42855009482401abd2d34ccad2f9e93c4bda90"),
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
