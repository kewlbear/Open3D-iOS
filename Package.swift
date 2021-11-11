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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/Assimp.xcframework.zip", checksum: "c13c17257d5fa149736501a70124bdc94675b697486cec6295b7fba87fb8d948"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/Faiss.xcframework.zip", checksum: "d2763b683917663ce6cce68f0d20e422bdf96442623e0fb666fffb908595093a"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/IrrXML.xcframework.zip", checksum: "b08472fcb3b38eed8b8f0b14d0971ebaa81496d053c1ed7adf89ebbf136b2639"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/JPEG.xcframework.zip", checksum: "0f6242ba2c645eb30d8e1d5e122e7629afa00b84b3c403e9e745095cd7643f4f"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/jsoncpp.xcframework.zip", checksum: "e1f1c13936054db7a58cddf54896bf95a515c877f622bd0998a5d6c95cf71973"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "ccd5c98e595462aa7eb83e01a39cc4de76e330b43d161202bcd798e84294cac6"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "fb3a412453fd25b523f4cb9ada586ca3574444b1aca7196ee14f09eb581d45a5"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "c62461b8e2e3e24c65d67cee1b7ec6d6f9fdbb75a1b2a32b925490f427bff697"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "3c1b303a015b2a996a2f9327ae207a3f362959254746c5c7c76c501c322aba3f"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/libOpen3D.a.xcframework.zip", checksum: "761bb51907a2f63ab3a8ff203e0fe16fc7b2bdb26123f14b4d969c80ceeaeeb3"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/png.xcframework.zip", checksum: "771ef9556401b83074481916eea98ed083850e89655ff6bb4aeb284f02f231a5"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/pybind.a.xcframework.zip", checksum: "647ef62fa975d9c62b227e1a536116f17d342383a5745a20581a01bc8b98d50c"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20211111025911/TBB.xcframework.zip", checksum: "2fe7259448ec8761202e8e456155ff40850528c4a4c387499363bbcfbfe47d4a"),
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
