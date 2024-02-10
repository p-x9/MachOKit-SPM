// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MachOKitSPM",
    products: [
        .library(
            name: "MachOKit",
            targets: ["MachOKitBin", "MachOKitCBin", "_MachOKitSPM"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MachOKitBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.12.0/MachOKit.xcframework.zip",
            checksum: "17a00d5dfc3fbfa754c0da4fa797e1cb5b1f926dc81cf7fb8fc1d154dac6e68c"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.12.0/MachOKitC.xcframework.zip",
            checksum: "5fc4a1347784a057bf995c0223ec3dc3e2d1d7d267efaa5622ddf75a92d48257"
        ),
        .target(
            name: "_MachOKitSPM",
            dependencies: ["MachOKitBin"]
        ),
        .testTarget(
            name: "MachOKitSPMTests",
            dependencies: ["MachOKitBin"]
        )
    ]
)
