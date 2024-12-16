// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FCombined",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FCombined",
            targets: ["FCombined"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FCombined",
            dependencies: ["F1", "F21"]
        ),
        .binaryTarget(
            name: "F1",
            path: "./F1.xcframework" // Укажите путь к F1.xcframework
        ),
        .binaryTarget(
            name: "F21",
            path: "./F21.xcframework" // Укажите путь к F21.xcframework
        )

    ]
)
