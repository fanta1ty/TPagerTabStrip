// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TPagerTabStrip",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "TPagerTabStrip",
            targets: ["TPagerTabStrip"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Climbatize/FXPageControl.git",
            .upToNextMajor(from: "1.5.1"))
    ],
    targets: [
        .target(
            name: "TPagerTabStrip",
            dependencies: [
                "FXPageControl"
            ],
            exclude: [
                "Objc"
            ]
        ),
        .testTarget(
            name: "TPagerTabStripTests",
            dependencies: ["TPagerTabStrip"]),
    ],
    swiftLanguageVersions: [.v5]
)
