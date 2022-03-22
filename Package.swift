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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/Assimp.xcframework.zip", checksum: "d36147a9b493bc44f69f8b79c9bb10d2d2b37b6a062c1a6ad66fca6df522e3a2"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/Faiss.xcframework.zip", checksum: "fe98cae3feed310b8e0d780a93756ff751ca87e86acf3448304da29c1c0bd7a8"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/IrrXML.xcframework.zip", checksum: "553cec9ca9e43888b58f4c04d33725b24af704fee7d010d09eb8ae4f78d76000"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/JPEG.xcframework.zip", checksum: "f5ad0d11c994cf3b541612e63bc1e68ce08615ff6db5d2802073912a55308431"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/jsoncpp.xcframework.zip", checksum: "15462807cdd8b0be922ad55df5b577b153f0da44fcacdf7c7f90e8bc534c4aea"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "b8743bb8d3eaa06f44afba1a9d40c729a1fe9fd33d70a49e6f99bf87cfbbeb80"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "977969ac72ce6a58c681f06e6b9d3ced0048b0841d1830f0bb8778a3416b7bf5"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "1b6acfb484710186a112c0bf3d57bcdd2bf1d050b330dd73888e7dbb7ff82c20"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "d3ef3e608cd8459d6d7371978929f55eee8e353b3772db0ce81f388430120dd1"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/libOpen3D.a.xcframework.zip", checksum: "57ef73f16d19bcd9d14a5f7cfabdcc54a07c506015820e2326af39b642c10809"),
        .binaryTarget(name: "png", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/png.xcframework.zip", checksum: "9134e8deac8445eda89b067fd93c3f7d272aa581d25dccdc6c133d52e661b4c8"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/pybind.a.xcframework.zip", checksum: "4dc1926710aaa6dd86c97a2b6d6b1793f6526747e8f9d80a0cfdc7bc5b335fe3"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20220322034617/TBB.xcframework.zip", checksum: "1c556feade326104ef0ad3e9f246ef568a38f78e62a42fba2e06b00071fca668"),
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
