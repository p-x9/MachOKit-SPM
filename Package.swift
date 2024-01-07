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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.5.0/MachOKit.xcframework.zip",
            checksum: "3707400c15ccc68ea3001a2357cdde40a3de42b95f77bbaf404b447afd0432a3"
        ),
        .target(
            name: "_MachOKitSPM"
        )
    ]
)
