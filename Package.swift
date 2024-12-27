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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.26.0/MachOKit.xcframework.zip",
            checksum: "bc995af11087a2deb70bdd76336dcbc0497de599dbe0aabefcc7836fe892a882"
        ),
        .binaryTarget(
            name: "MachOKitCBin",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.26.0/MachOKitC.xcframework.zip",
            checksum: "c4fe72749fa7a7d1418dd884c636007bb2e6ea2bb6420b252105eb48ca208f32"
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
