// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ContactCenterMessagingApp",
    products: [
        .library(
            name: "ContactCenterMessagingApp",
            targets: ["ContactCenterMessagingApp", "AdaptiveCards", "CocoaLumberjack","FluentUI","SVGKit"]),
    ],
    targets: [
        .target(
            name: "ContactCenterMessagingApp",
            dependencies: [],
            exclude: ["*/TestApp234"]),
        .testTarget(
            name: "ContactCenterMessagingAppTests",
            dependencies: ["ContactCenterMessagingApp"]
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
            path: "./Sources/SVGKit.xcframework")
    ]
)
