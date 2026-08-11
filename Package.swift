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
                      url: "https://github.com/NetcoreSolutions/SmartechBaseSPM/releases/download/3.8.3/Smartech.xcframework.zip",
                     checksum: "4a83cd6d0aad11d3186ce5fc346419bf0b861a780bf40d44139de708e24dd50c")
    ]
)
