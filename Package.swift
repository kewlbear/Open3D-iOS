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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/Assimp.xcframework.zip", checksum: "7b3c10dad393ddf9539dec62870d6f1b7059e831c4da1b6c2fb9843e2f594ea6"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/Faiss.xcframework.zip", checksum: "3baa27fb02a11142e42971e129ad81c0fc292a19cf87f3d9eb6490e20d5ad423"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/IrrXML.xcframework.zip", checksum: "305cae55d86a896103c8739da511c5cb04d425ee1a5759e5f26721643d856abe"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/JPEG.xcframework.zip", checksum: "81e28e80de7df30efed771829d016775ada0065f03e24bc5bf94fe5c514d3839"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "8ef8b495026aec0179a4f7807ec35926b3711e4459556a012e26f1e4e3f15e2f"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "785408961ba066b4b2d08c7af24501b5e7b34411bec75097ef54f770f13ae933"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "1b85b7b69492d6797ea66ac3f109ab048d05b19cfe17509ed58757fb5cd99d13"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "b7cf5fdb3c1c3f40c2aef54ca30561712b967b83056d6f1ff16b4bd271e8db6a"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "libOpen3D_3rdparty_.xcframework_CHECKSUM"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/libOpen3D.a.xcframework.zip", checksum: "5096b74d72c918df85670bd0835a9c515b4696f090a994fc634e8ffbc09f42fa"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/libpng.a.xcframework.zip", checksum: "fe382762790448842142b92af69960d10b14bda8fb696d45692e70bf744ab8a2"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/pybind.a.xcframework.zip", checksum: "c926f1f4e7a7844243cf33a4e800328d18ea2707c3bc5a0b2e055b9c129d080f"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210401093531/TBB.xcframework.zip", checksum: "ad5acaa9b2bdd09913fb6f25704ff3c52aba14ec29c6c81cc5c9335774c96ffd"),
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
