// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "SegmentAmplitude",
  platforms: [
    .iOS(.v10),
    .macOS(.v10_14)
  ],
  products: [
    .library(
      name: "SegmentAmplitude",
      targets: ["SegmentAmplitude"]),
  ],
  dependencies: [
    .package(
      name: "Amplitude",
      url: "https://github.com/amplitude/Amplitude-iOS",
      .exact("7.0.1")),
    .package(
      name: "Segment",
      url: "https://github.com/segmentio/analytics-ios",
      .exact("4.1.2"))
  ],
  targets: [
    .target(
      name: "SegmentAmplitude",
      dependencies: ["Segment", "Amplitude"]
    ),
  ]
)