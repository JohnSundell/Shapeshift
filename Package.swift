// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Shapeshift",
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Xgen.git", from: "2.0.0"),
    ],
    targets: [
        .target(
            name: "Shapeshift",
            dependencies: ["Xgen"]
        )
    ]
)
