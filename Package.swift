// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "SegmentAmplitude",
  platforms: [
    .iOS(.v10)
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
      .exact("5.2.1")),
    .package(
      name: "Segment",
      url: "https://github.com/segmentio/analytics-ios",
      .exact("4.1.2"))
  ],
  targets: [
    .target(
      name: "SegmentAmplitude",
      dependencies: ["Segment", "Amplitude"],
      path: "Pod",
      cSettings: [
        .headerSearchPath("Classes"),
      ]
    ),
  ]
)