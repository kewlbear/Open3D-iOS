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
        .binaryTarget(name: "Assimp", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/Assimp.xcframework.zip", checksum: "9ec30da30b9273b68bbd2487b4255aa95b10c177ca095f370150eb61d5ad8bb8"),
        .binaryTarget(name: "Faiss", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/Faiss.xcframework.zip", checksum: "6a0618f2fd51e19043d7893ddb9c1b58b286088f17000f0a7de432ffe6b64d5d"),
        .binaryTarget(name: "IrrXML", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/IrrXML.xcframework.zip", checksum: "80639acba1a820ccc3ac548c22d337b60d4a94c5d5fc986ab23b10cbc6f05b66"),
        .binaryTarget(name: "JPEG", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/JPEG.xcframework.zip", checksum: "d2437966d6ed6e29962ca8a72681180c054683acc34a3a1f1206100ee7dc931f"),
        .binaryTarget(name: "libOpen3D_3rdparty_jsoncpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/libOpen3D_3rdparty_jsoncpp.a.xcframework.zip", checksum: "84d87661eb18cfa3c8dd79d380110b301a2ad27b52a1465047cd4d925ca8f7d2"),
        .binaryTarget(name: "libOpen3D_3rdparty_lzf.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/libOpen3D_3rdparty_lzf.a.xcframework.zip", checksum: "500210f9caf3850b6c7be6a9cde71a10bce5b500776f9a77b51e70328480e1c8"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "61d162d3f90e2b1f1e5e369e774077c435aaa80834331a20a615a0cbe4cf8c67"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "63f8e06f79750d027d6879ea1f512a86a3aafcbefa406d243846141538d3d4b4"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "fab74b5f3fe1169529b5a5c92eb0d540d8e34e56de9010377b758a4a23730295"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/libOpen3D.a.xcframework.zip", checksum: "4c834a2127aa781f73e7a11c3ef864d43f7a801179d2c1ac4b8317f3435532d2"),
        .binaryTarget(name: "libpng.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/libpng.a.xcframework.zip", checksum: "0487bfc7422807f5f8c7a1855af7e30329a112c322dc5527d0755a8022c561d0"),
        .binaryTarget(name: "pybind.a", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/pybind.a.xcframework.zip", checksum: "b37ac9c6c78df41121d1e6300382426590768b10eadf85d33cc182566414f853"),
        .binaryTarget(name: "TBB", url: "https://github.com/kewlbear/Open3D-iOS/releases/download/0.0.20210421033857/TBB.xcframework.zip", checksum: "9c17b2d6b8dad1cdd098f2a131b19c4c3678f464d334637d3eae57eb4d07534e"),
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
