// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RatingView",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "RatingView",
            targets: ["RatingView"]),
    ],
    targets: [
        .target(
            name: "RatingView",
            dependencies: [],
            resources: [
                .process("Resources/Colors.xcassets")
            ]
        )
    ]
)
