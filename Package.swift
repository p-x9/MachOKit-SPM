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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.13.0/MachOKit.xcframework.zip",
            checksum: "efe3c77e8a9f6e622baa9b750ff2b9bd72a3a958ac153ddfce719e577a23dd1e"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.13.0/MachOKitC.xcframework.zip",
            checksum: "6f919c66850eae914184f2683e46f38616afb3575277b9eb92b86e20d833c114"
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
