// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "analytics-swift",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12),
        .tvOS(.v11),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "Segment",
            targets: ["Segment"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Segment",
            dependencies: [],
            swiftSettings: [
                .unsafeFlags(["-enable-library-evolution"])
            ]
        ),
        .testTarget(
            name: "SegmentTests",
            dependencies: ["Segment"]
        ),
    ]
)