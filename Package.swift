// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMock",
    platforms: [
        .iOS(.v18),
        .visionOS(.v2)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "FileIO", targets: ["FileIO"]),
        .library(name: "DisplayData", targets: ["DisplayData"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "FileIO", path: "FileIO", sources: ["Sources"]),
        .testTarget(name: "FileIOTests", dependencies: ["FileIO"], path: "FileIO", sources: ["Tests"]),

        .target(name: "DisplayData", path: "DisplayData", sources: ["Sources"]),
        .testTarget(name: "DisplayDataTests", dependencies: ["DisplayData"], path: "DisplayData", sources: ["Tests"]),
    ]
)
