// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ContactCenterMessagingApp",
    products: [
        .library(
            name: "ContactCenterMessagingApp",
            targets: ["ContactCenterMessagingSDK"]),
    ],
    targets: [
        .target(
            name: "ContactCenterMessagingApp"),
        .binaryTarget(
            name: "ContactCenterMessagingSDK",
            url: "https://github.com/microsoft/ContactCenterMessagingSDK-ios/releases/download/v0.0.2/ContactCenterMessagingSDK.zip",
            checksum: "b30812cf887c967b37fa84027a82a1de0559ccfa3c1d942dc15357986f65e3c2"
        )
    ]
)
