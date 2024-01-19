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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.8.0/MachOKit.xcframework.zip",
            checksum: "c856d07b8e4a1ea3d63bf34b17da65e5c8c654fbe66c90bb2c3f234fd9bea605"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.8.0/MachOKitC.xcframework.zip",
            checksum: "58c5fc791b3743eeab257d4af1401e46a450d0606675beac0a0f8ebd1eae462c"
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
