// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "dealer",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:fuck-repo/DeckOfPlayingCards.git", from: "1.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "dealer",
            dependencies: ["DeckOfPlayingCards"]),
        .testTarget(
            name: "dealerTests",
            dependencies: ["dealer"]),
    ]
)
