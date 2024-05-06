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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.16.1/MachOKit.xcframework.zip",
            checksum: "a88c6ddd2be85b4973ca94f7b358cc6b2b107e1afce945780cc011163646e8b1"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.16.1/MachOKitC.xcframework.zip",
            checksum: "aaaf61b704dfb440d4ccfc438c55b02a7e57af5fe7d8b58c3016f21e5a0d3d37"
        ),
        .target(
            name: "_MachOKitSPM",
            dependencies: ["MachOKitBin", "MachOKitCBin"]
        ),
        .testTarget(
            name: "MachOKitSPMTests",
            dependencies: ["_MachOKitSPM"]
        )
    ]
)
