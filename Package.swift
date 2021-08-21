// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "URLImageModule",
    platforms: [
        .iOS(SupportedPlatform.IOSVersion.v13),
        .watchOS(SupportedPlatform.WatchOSVersion.v6),
        .tvOS(SupportedPlatform.TVOSVersion.v13)
    ],
    products: [
        .library(
            name: "URLImageModule",
            targets: ["URLImageModule"]
        )
    ],
    targets: [
        .target(name: "URLImageModule"),
        .testTarget(
            name: "URLImageModuleTests",
            dependencies: ["URLImageModule"]
        )
    ]
)
