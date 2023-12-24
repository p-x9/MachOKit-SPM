// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MachOKitSPM",
    products: [
        .library(
            name: "MachOKit",
            targets: ["MachOKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MachOKit",
            url: "https://github.com/p-x9/MachOKit/releases/download/0.1.5/MachOKit.xcframework.zip",
            checksum: "f903478fc48879da09d199314530bdf169329fd3b224cc9519648efeff971933"
        ),
        .testTarget(
            name: "MachOKitSPMTests",
            dependencies: ["MachOKit"]
        ),
    ]
)
