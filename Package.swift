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
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MachOKitBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.35.0/MachOKit.xcframework.zip",
            checksum: "f9008f7f3c236b6e5bbee1370c9b58e0d94ce10f5628881c3450628dbb904140"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.35.0/MachOKitC.xcframework.zip",
            checksum: "3a5d0c3cbd2a85e3d059b38f4bf8a7047712c1eeab8dd7016e4ded169855a7f1"
        ),
        .target(
            name: "_MachOKitSPM",
            dependencies: [
                "MachOKitBin",
                "MachOKitCBin"
            ]
        ),
        .testTarget(
            name: "MachOKitSPMTests",
            dependencies: ["_MachOKitSPM"]
        )
    ]
)
