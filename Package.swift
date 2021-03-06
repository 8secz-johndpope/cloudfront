// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "CloudFront",
    platforms: [.iOS(.v12), .tvOS(.v12), .watchOS(.v5)],
    products: [
        .library(name: "CloudFront", targets: ["CloudFront"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-aws/aws-sdk-swift-core.git", .upToNextMinor(from: "4.6.0"))
    ],
    targets: [
        .target(name: "CloudFront", dependencies: ["AWSSDKSwiftCore"], path: "./Sources/CloudFront"),
    ]
)
