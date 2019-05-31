// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "DashedView",
    products: [
        .library(
            name: "DashedView",
            targets: ["DashedView"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DashedView",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "DashedViewTests",
            dependencies: ["DashedView"],
            path: "Tests"
        ),
    ]
)
