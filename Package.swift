// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SmartechBaseSDK",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SmartechBaseSPM",
            targets: ["SmartechBaseSPM", "Smartech"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SmartechBaseSPM"),
        .binaryTarget(name: "Smartech",
                      url: "https://github.com/NetcoreSolutions/SmartechBaseSPM/releases/download/3.5.0/Smartech.xcframework.zip",
                     checksum: "1cbaa146feac6e6d6183d54ab68940a8f3bbb3050532d7c3d5bcfef99f9a42a7")
    ]
)
