// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "DeepLinking",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "DeepLinking",
            targets: ["DeepLinking"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(name: "DeepLinking", dependencies: []),
        .testTarget(
            name: "DeepLinkingTests",
            dependencies: ["DeepLinking"]
        ),
    ]
)
