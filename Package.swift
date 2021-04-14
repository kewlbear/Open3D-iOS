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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/Assimp.xcframework.zip", checksum: "a39b5ffdcbed4839c90b1c88e08fc699ead9f58bb36dacb836fb96216319f6e4"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/Faiss.xcframework.zip", checksum: "b3015b34b3e81e7080d7e9040d83fcd4501955511cbfaab8990fb5d8e73ff1dd"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/IrrXML.xcframework.zip", checksum: "b0ca0e1e1e9dd2fa7f3a5ed7c2b7babe14ff3ee7b031ebd65b6d90ddd0a4f404"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/JPEG.xcframework.zip", checksum: "5c212d4220282191fa9edbbaba023c967be8aac838a0657ec80ac85260cc92c9"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "64f908353e945e659bf5be010ef5d4d310c837d30795c441c6352cbd798d9ae6"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "ef64dbad27d21fc663a046cbe00ae0e034f6637261024ff8247b43f07d72e1be"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "78cd71c0c421f41187bb937b5f92a93e4249f0d050d2a9bf6df49c767e2561d4"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "ce384d8104aa5e1b3d9b2bc9ba57dbe0f0d51cd07c42580ee22e226aa8344483"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "8000c6cb80b2dae9db138e066c8e74daf95fae75ebde8b1b8d3f601e86556521"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/libOpen3D.a.xcframework.zip", checksum: "b9d7e299e9032e57cf95acc07f234bd1faed3f3ba5702bc0f767c7851995681b"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/libpng.a.xcframework.zip", checksum: "e19b3b7a97113fe1959e8abac7643e5387bb9deb6e4ff133d5d1bb6eca832b76"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/pybind.a.xcframework.zip", checksum: "93c1f9e4e8b753c2fbdd20647a1144e3ed02ea441344f487f6e9a935e07bd50f"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210414023702/TBB.xcframework.zip", checksum: "5be9f4fa3e98675f8889098788b32c986a7eec31e64d8dce3f00efc0bfb58ec8"),
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
