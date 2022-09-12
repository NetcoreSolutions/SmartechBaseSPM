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
                      url: "https://github.com/NetcoreSolutions/SmartechBaseSPM/releases/download/3.2.8/Smartech.xcframework.zip",
                     checksum: "a0c07a12a6cf98153f8ca0f4a690e5d7360170e7b3bba71b08ef3845aa964206")
    ]
)
