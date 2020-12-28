// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BleConnect_Lib",
    platforms: [
        .macOS(.v10_14), .iOS(.v13), .tvOS(.v13)
    ],
    products: [
        
        .library(
            name: "BleConnect_Lib",
            targets: ["BleConnect_Lib", "ConnectBlu"]),
    ],
    dependencies: [
       
    ],
    targets: [
       
        .binaryTarget(name: "ConnectBlu",
                      url: "https://codewithmugish.000webhostapp.com/ConnectBlu.xcframework.zip",
                      checksum: "c9b8217d9920a9d139a679c9b4e8ead48ed723f1c5c507c9cfc6ed122a2bb2d1"),
        .target(
            name: "BleConnect_Lib",
            dependencies: []),
        .testTarget(
            name: "BleConnect_LibTests",
            dependencies: ["BleConnect_Lib"]),
    ]
)
