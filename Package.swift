// swift-tools-version: 5.10

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
        .package(
            url: "https://github.com/p-x9/swift-binary-parse-support-bin.git",
            from: "0.1.1"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MachOKitBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.55.0/MachOKit.xcframework.zip",
            checksum: "ffaab320822fbec3d9cb03cb001a5c9e033e72c12b5ce1853e89bca381b1d36f"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.55.0/MachOKitC.xcframework.zip",
            checksum: "cb59d657d8be767ad458ef922553409e33f3c0c4d4dd2264e279e830265d9a9d"
        ),
        .target(
            name: "_MachOKitSPM",
            dependencies: [
                "MachOKitBin",
                "MachOKitCBin",
                .product(
                    name: "BinaryParseSupport",
                    package: "swift-binary-parse-support-bin"
                )
            ]
        ),
        .testTarget(
            name: "MachOKitSPMTests",
            dependencies: ["_MachOKitSPM"]
        )
    ]
)
