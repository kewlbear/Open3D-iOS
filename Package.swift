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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/Assimp.xcframework.zip", checksum: "06c1fc2bcac63cf888d443efe1e4b069075dbf94b4ec60a57c1a0369a26a3170"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/Faiss.xcframework.zip", checksum: "d3985e3ca7c6ca8f72928384df46c2ffeb0929f7e97d875f16f4eed394a9c3cf"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/IrrXML.xcframework.zip", checksum: "5d13c9abac41cbfac1bb34f45759c66a82899f410e61ec989a57652bbd6bc782"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/JPEG.xcframework.zip", checksum: "fccc163c4c6a68c40e87261674e2f8566303118481b63afab5df48382a927f35"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "317e6cc2c0065e0eae46672145f6521fec16abcc7ecf57c2f4a0c60f258e98ca"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "f15d181693773b4e20012319f2da9f5440acf4656ec7509a99a0782284768dfe"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "6c36cfed1c5e11bc593110f3a302a53da2ee9a22cda93577631e04b8c2d7f38d"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "5811def1bf58da7607d21249af838b2410e8b5b59d729713c1286b934ee47634"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "3ef8499d99c869944789bc2872ab4acbcfa6a6927926a738167f7192f5c3a7e7"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/libOpen3D.a.xcframework.zip", checksum: "32340286a0bfd58e2c5d6a4c9c0bf75bc1a2801664aa42fb633233d39f3085e0"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/libpng.a.xcframework.zip", checksum: "f8f133081e0910ff4c51bb675dbab76698396bfff5be4eb8c2cea1ec385fbd3d"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/pybind.a.xcframework.zip", checksum: "39ac0ae4c06f2bdc1a289ca860151ad30830ba8e00aef6ff86a1c0792ca016c0"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210416082841/TBB.xcframework.zip", checksum: "aae71b5fbf024ed587f578bf898b433e3b390748d31b3e29250bdda0578e1628"),
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
