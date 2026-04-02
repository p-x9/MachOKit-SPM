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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.48.0/MachOKit.xcframework.zip",
            checksum: "eb412752706963a51bd16d427aff4ea2b1e713aa899ff600dc5843bd52417ac8"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.48.0/MachOKitC.xcframework.zip",
            checksum: "2fc66113ae19ae5a4148c6b34eb77fdb7c2e5199bd03655eb94e9db9fe221cb1"
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
