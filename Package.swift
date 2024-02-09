// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "S3",
    products: [
        .library(name: "S3", targets: ["S3"]),
        .library(name: "S3Signer", targets: ["S3Signer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.90.0"),
        .package(url: "https://github.com/LiveUI/XMLCoding.git", from: "0.1.0"),
    ],
    targets: [
        .target(name: "S3", dependencies: [
            "Vapor",
            "S3Signer",
            "XMLCoding"
            ]
        ),
        .target(name: "S3Signer", dependencies: [
            "Vapor"
            ]
        )
    ]
)
