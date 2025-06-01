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
    dependencies: [
        .package(url: "https://github.com/p-x9/swift-fileio.git", from: "0.9.0")
    ],
    targets: [
        .binaryTarget(
            name: "MachOKitBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.34.0/MachOKit.xcframework.zip",
            checksum: "60298c77a50557b0c7e22a3e1d93866a9cb6033ca3befb7e405676a48521ddbc"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.34.0/MachOKitC.xcframework.zip",
            checksum: "d3db3488d3c85d2bbde49e20f46081fdc94ca732acb538b8f93982f53eaaa3ab"
        ),
        .target(
            name: "_MachOKitSPM",
            dependencies: [
                "MachOKitBin",
                "MachOKitCBin",
                .product(name: "FileIO", package: "swift-fileio")
            ]
        ),
        .testTarget(
            name: "MachOKitSPMTests",
            dependencies: ["_MachOKitSPM"]
        )
    ]
)
