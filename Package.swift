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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.7.0/MachOKit.xcframework.zip",
            checksum: "198276c0068882661a4612ebf2c38bdf0ff87425987a0d2d2c190eb1063ad867"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.7.0/MachOKitC.xcframework.zip",
            checksum: "12c2cc3a8d15e559c4c7fd3e70e2ea37806a9963cc72f8ae68be2c9f5988e872"
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
