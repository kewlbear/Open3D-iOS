// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Open3D-iOS",
    products: [
        .library(
            name: "Open3D-iOS",
            targets: ["Link", "Open3DSupport"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kewlbear/Python-iOS.git", .branch("kivy-ios")),
    ],
    targets: [
        .target(
            name: "Link",
            dependencies: ["libOpen3D", "Python-iOS"]),
        .target(
            name: "Open3DSupport",
            resources: [.copy("site-packages")]),
        .testTarget(
            name: "Open3D-iOSTests",
            dependencies: ["Open3D-iOS"]),
    ]
)
