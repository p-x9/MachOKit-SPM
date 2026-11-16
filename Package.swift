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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.56.2/MachOKit.xcframework.zip",
            checksum: "acefcb912acb4bc2c70082788b77bd08dedda7210f41baeba08510a775fca02c"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.56.2/MachOKitC.xcframework.zip",
            checksum: "c5e4a83606faf5763ea5f626e64251078b3c5c0ebda50405fc191d5b7763234b"
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
