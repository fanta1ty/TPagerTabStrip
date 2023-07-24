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
    targets: [
        .target(
            name: "FXPageControl",
            dependencies: [],
            path: "FXPageControl/Sources",
            publicHeadersPath: "./"
        ),
        .target(
            name: "TPagerTabStrip",
            dependencies: [
                "FXPageControl"
            ],
            exclude: [
                "Info.plist"
            ],
            resources: [
                .process("Sources")
            ]
        ),
        .testTarget(
            name: "TPagerTabStripTests",
            dependencies: ["TPagerTabStrip"]),
    ],
    swiftLanguageVersions: [.v5]
)
