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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.42.0/MachOKit.xcframework.zip",
            checksum: "6d4f15390a4e1f37fc7f9cea8ff618f665512aa0c96fb5fa6961d6101723bdae"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.42.0/MachOKitC.xcframework.zip",
            checksum: "87ed4630c8f2381fd6ea44048cfb43e2ca02ab93fc7637402d345db261b8d524"
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
