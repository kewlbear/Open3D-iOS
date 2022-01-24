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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/Assimp.xcframework.zip", checksum: "df5e5de7175b4f90e37ea4e3b4df41d644d1fc92a6a19f0f9fd0ca46b7562e6f"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/Faiss.xcframework.zip", checksum: "1905aad0a84d4db71fca24c63a970c1ea6d0cdfd92045f47789046ed78de8337"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/IrrXML.xcframework.zip", checksum: "f4311da05c89b8c4203e49f00fa8e91b76ee2441cafa09a0676b8c5d658eeafa"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/JPEG.xcframework.zip", checksum: "f8c773b22acd83d97108bebc62e3848eba595dbf8fec23669b6d2fd46ddca3b5"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/jsoncpp.xcframework.zip", checksum: "ed020b8b358c772c1f6b8948e3fb0d575f79589578b6276067e729a09cf07b16"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "libOpen3D_3rdparty_lzf.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "61314694a8d915183d0c094c88351127fa419abd2f44345f3e313ff807b8a962"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "8b132da87ab0c32b244e156878f35c09a5728f7306aae48f5801ce5105f2da7e"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "e3ad549b64a75b79b4667ebffcd930396ef55f5d9a8ae9566d87b4534fb3138c"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/libOpen3D.a.xcframework.zip", checksum: "57997998c45dbd5af8b8ebcb6d3328d514725a7ddd6960e200beed6697a47a3d"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/png.xcframework.zip", checksum: "cbb93fbd09b89ae1a4167c6ca1e95df29e864c3b9de454ca95d51a3bfc20af6d"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/pybind.a.xcframework.zip", checksum: "pybind.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220124025704/TBB.xcframework.zip", checksum: "b61d6fe06a99d0db408c89fa6a9555c50490067a266853385729de19e5703f04"),
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
