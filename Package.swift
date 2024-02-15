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
    dependencies: [
        .package(url: "https://github.com/yonaskolb/XcodeGen.git", from: "2.39.1"),
    ],
    targets: [
        .target(name: "DeepLinking", dependencies: []),
        .testTarget(
            name: "DeepLinkingTests",
            dependencies: ["DeepLinking"]
        ),
    ]
)
