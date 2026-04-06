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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaTnkPub.xcframework.zip",
            checksum: "c2fc95fa288bbce9a33a03ac3fc3c6e4e40521c471c6c0739703a249cf0579da"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/TnkPubSdk.xcframework.zip",
            checksum: "d96cccf26eff04f2b3df845124638f3facf7703b298abaac586a4ff636a5040c"
        ),
    ]
)
