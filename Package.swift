// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "diavirt",
    platforms: [
        .macOS("14.0")
    ],
    products: [
        .executable(name: "diavirt", targets: ["diavirt"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "diavirt",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        )
    ]
)
