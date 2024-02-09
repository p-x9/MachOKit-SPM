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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.11.1/MachOKit.xcframework.zip",
            checksum: "4e83ea68ddba7d07b397e26c88e899fd74697f989faae00a3979ecf21cc76360"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.11.1/MachOKitC.xcframework.zip",
            checksum: "3f1eb24bb68583de8310195eb286713a0754d7014152fd9315704113ae973d5d"
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
