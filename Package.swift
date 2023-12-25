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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.2.0/MachOKit.xcframework.zip",
            checksum: "74d9a32dbf588a2ef2e7f0644b0f2dc1b66d28b878a793f93d36f40ffc7fde3f"
        ),
        .target(
            name: "_MachOKitSPM"
        )
    ]
)
