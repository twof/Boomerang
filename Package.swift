// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "Boomerang",
    products: [
        .library(name: "Boomerang", targets: ["Boomerang"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.2.0"),
    ],
    targets: [
        .target(name: "Boomerang", dependencies: ["Vapor"]),
    ]
)

