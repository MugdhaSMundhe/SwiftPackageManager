// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMDemoApp",
    products: [
        .library(
            name: "SPMDemoApp",
            targets: ["SPMDemoApp", "AdaptiveCards", "CocoaLumberjack","FluentUI","SVGKit","Test"]),
    ],
    targets: [
        .target(
            name: "SPMDemoApp"),
        .testTarget(
            name: "SPMDemoAppTests",
            dependencies: ["SPMDemoApp"]
        ),
        .binaryTarget(
            name: "AdaptiveCards",
            path: "./Sources/AdaptiveCards.xcframework"),
        .binaryTarget(
            name: "CocoaLumberjack",
            path: "./Sources/CocoaLumberjack.xcframework"),
        .binaryTarget(
            name: "FluentUI",
            path: "./Sources/FluentUI.xcframework"),
        .binaryTarget(
            name: "SVGKit",
            path: "./Sources/SVGKit.xcframework"),
        .binaryTarget(
            name: "Test",
            path: "./Sources/Test.xcframework")
    ]
)
