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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.24.0/MachOKit.xcframework.zip",
            checksum: "b4adc24c8f3f05611ff9f6fd38f33771ce80da3943fe530391fb12450f181f1c"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.24.0/MachOKitC.xcframework.zip",
            checksum: "8025933659003f9d7cb593d956727832b7e10ee7e19dab6253b0906b13cef417"
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
