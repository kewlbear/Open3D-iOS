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
                "libOpen3D_3rdparty_liblzf.a",
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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/Assimp.xcframework.zip", checksum: "2a80268fc3ee5501f0491778f8fb1d053097c5504fec6d056c2a1ffc82deb2bf"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/Faiss.xcframework.zip", checksum: "a6520e9a7ec211570f39bc9906d53c801a67189745f0ce72fc3634bb5913e4d5"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/IrrXML.xcframework.zip", checksum: "7e948d42956a3880e61fa0c98d121fa31fde6b729d3074d0516dd04154efbb11"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/JPEG.xcframework.zip", checksum: "96ffddd5ec78d390beb04de7f4fb896d3603fe201455b0716a074deb90cdc259"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/jsoncpp.xcframework.zip", checksum: "feed1295ceffe288fc9bf7f7e287384d19cc763b5931f653dd8f6ca715006af0"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "libOpen3D_3rdparty_liblzf.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "libOpen3D_3rdparty_qhull_r.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "libOpen3D_3rdparty_qhullcpp.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "libOpen3D_3rdparty_rply.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/libOpen3D.a.xcframework.zip", checksum: "libOpen3D.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/png.xcframework.zip", checksum: "104ec4ad4deaae609d7ce7458d808ca8516cc0ea8a80a76c0712fcd0517e3186"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/pybind.a.xcframework.zip", checksum: "pybind.a.xcframework_CHECKSUM"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20221129003814/TBB.xcframework.zip", checksum: "d427d9f65bcfd7bfb8d93d63ba8f1c2c5732429f31374d464efbcd4a1347e417"),
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
                "libOpen3D_3rdparty_liblzf.a",
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
