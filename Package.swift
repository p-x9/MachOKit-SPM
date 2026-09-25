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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.53.0/MachOKit.xcframework.zip",
            checksum: "2992988253c3b4b6cb0a988ae072aee1d9e0412ddaf8512da8e9d8134a4cb9a6"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.53.0/MachOKitC.xcframework.zip",
            checksum: "e599f0c20dc60dcbbe8616234ef7e209b3e2590a581a47527f21a6490f7bc2ae"
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
