// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "OpenWeatherAPI",
    products: [
        .library(
            name: "OpenWeatherAPI",
            targets: ["OpenWeatherAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "OpenWeatherAPI",
            dependencies: []),
        .testTarget(
            name: "OpenWeatherAPITests",
            dependencies: ["OpenWeatherAPI"],
            resources: [.copy("Resources")])
        ]
)
