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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.3.0/MachOKit.xcframework.zip",
            checksum: "248e446ee46cf8a529c45c1059bca11745f6f009987524ff258477e28d6b4896"
        ),
        .target(
            name: "_MachOKitSPM"
        )
    ]
)
