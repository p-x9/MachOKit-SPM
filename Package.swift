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
            url: "https://github.com/p-x9/MachOKit/releases/download/0.1.4/MachOKit.xcframework.zip",
            checksum: "d6248549aa374de3628432b26e8b7bc331ed12949141c531a8e51bae0cbc53ca"
        ),
        .testTarget(
            name: "MachOKitSPMTests",
            dependencies: ["MachOKit"]
        ),
    ]
)
