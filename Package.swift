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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.26.2/MachOKit.xcframework.zip",
            checksum: "11d7c84f9091a8f9d6cfdde43e2839c448c1a3d7a0504d3a42b99b8889dd33f5"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.26.2/MachOKitC.xcframework.zip",
            checksum: "ba183aa4298fd5f40d1c19c04181f82b03af252b37fa7a680b3d7f50ee7669b7"
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
