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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.10.0/MachOKit.xcframework.zip",
            checksum: "b02f99402d34d7ee9dc730b325b2873e0042d0b937d82fe5f888227717b1a008"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.10.0/MachOKitC.xcframework.zip",
            checksum: "262d6f2af7ceaa4a9a4eb73d20462b707cdc3fec3a413c7c5e314ae8d4302278"
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
