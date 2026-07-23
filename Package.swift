// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaTnkPub",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaTnkPub",
            targets: ["REVUPMediaTnkPubTarget"]
        ),
    ],
    targets: [
        .target(
            name: "REVUPMediaTnkPubTarget",
            dependencies: [
                .target(name: "REVUPMediaTnkPub"),
                .target(name: "TnkPubSdk"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaTnkPub",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaTnkPub.xcframework.zip",
            checksum: "09ccff852f3c7fcae62aba5bd3fac59b97c8012ed9b9318bb39d1637c250566a"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/TnkPubSdk.xcframework.zip",
            checksum: "d96cccf26eff04f2b3df845124638f3facf7703b298abaac586a4ff636a5040c"
        ),
    ]
)
