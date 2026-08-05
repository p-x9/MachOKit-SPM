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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.52.2/MachOKit.xcframework.zip",
            checksum: "bfce40d41561346513b97aaa2410863d869fc2d92df7027791677cb0ea2a6de3"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.52.2/MachOKitC.xcframework.zip",
            checksum: "f2e557758644497ea95fcf450c78748736b6593650c7c6a253f85a15987178e1"
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
