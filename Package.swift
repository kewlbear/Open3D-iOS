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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/Assimp.xcframework.zip", checksum: "7689c57fc3ee2ae4fe7c97e6d7a2e5c13606cc1d94ded87ad8ae41e823d9784d"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/Faiss.xcframework.zip", checksum: "baee2df27b76cdfbf7dff1407d328e601ef61bc3d301671395347e6314555fe2"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/IrrXML.xcframework.zip", checksum: "f046af3a5183a621e5bd6049308ca48c9ef57351844104b19d9898b0fa3f598c"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/JPEG.xcframework.zip", checksum: "f86153ba37fac09af817dd8f9fbff1dd18187650770a6a6d8ca9855b3c1cb7c2"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/jsoncpp.xcframework.zip", checksum: "561df62e0ff3e0d56124019aea2b65834bf79c602cbe96bc353fbb92bac824d5"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "d397075ef3c01b66c2a5dd5b8cdd2392f635d36f7cdb917f02a0260f84b8d6df"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "0b5f9a0e9d91164eaeeb00057ea1fbc8c89aa23afd24f385c5a7efd12ce3f457"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "a8636e3610366f73d0a74bee7be7dec400b8ae684b09e7229041992cfd912cde"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "2d2895d002641508a30d161e43dd2549f4c74c38308f7fed21db99f7a953676b"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/libOpen3D.a.xcframework.zip", checksum: "ee81a73b35a780396d1194d15688fde37c43d3e2459fffd1a7371282d378a51a"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/png.xcframework.zip", checksum: "292c64611a8e0078c9577af72b69470898c5bd8e1bb29430a4f6102e0e4efee2"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/pybind.a.xcframework.zip", checksum: "0cab8ab763d42e7e8c1a5885f491866b5108d678fc6b9d231c54390547223119"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220206082955/TBB.xcframework.zip", checksum: "be22966555934678dda8529a9be13577a08ee69d7d2f96694661dab0c549afa6"),
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
