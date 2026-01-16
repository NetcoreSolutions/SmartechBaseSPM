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
                      url: "https://github.com/NetcoreSolutions/SmartechBaseSPM/releases/download/3.7.4/Smartech.xcframework.zip",
                     checksum: "c622cd66e72f3210321bdb7f2fd4eb23915d998a2b923aaaf72dcec1dde3b49c")
    ]
)
