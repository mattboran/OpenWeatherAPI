// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "OpenWeatherAPI",
    products: [
        .library(
            name: "OpenWeatherAPI",
            targets: ["OpenWeatherAPI"])
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
