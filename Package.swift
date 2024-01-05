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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.4.0/MachOKit.xcframework.zip",
            checksum: "2a0ffadeda215c34fe79a3bc9f90153c7b56773b927160a76a22646913ed8cd3"
        ),
        .target(
            name: "_MachOKitSPM"
        )
    ]
)
