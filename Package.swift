// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "SegmentAmplitude",
  products: [
    .library(
      name: "SegmentAmplitude",
      targets: ["SegmentAmplitude"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/amplitude/Amplitude-iOS",
      .exact("5.3.0")),
    .package(
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