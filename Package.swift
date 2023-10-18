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
                      url: "https://github.com/NetcoreSolutions/SmartechBaseSPM/releases/download/3.4.0/Smartech.xcframework.zip",
                     checksum: "ec83273319b8a3a136fb94617bf21f1d3fb9f1e9ecf6f3a312fef2cfd568b875")
    ]
)
