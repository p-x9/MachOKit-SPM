// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MachOKitSPM",
    products: [
        .library(
            name: "MachOKit",
            targets: ["MachOKitBin", "_MachOKitSPM"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MachOKitBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.6.0/MachOKit.xcframework.zip",
            checksum: "8b181cfe3a1189a6db2204f62b7089d0bd4171e1ff42dbb6315b39b179f57094"
        ),
        .target(
            name: "_MachOKitSPM"
        )
    ]
)
