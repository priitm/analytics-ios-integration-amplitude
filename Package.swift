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
      Version(5, 3, 0)),
    .package(
      url: "https://github.com/segmentio/analytics-ios",
      Version(4, 1, 3))
  ],
  targets: [
    .target(
      name: "SegmentAmplitude",
      path: "Pod",
      cSettings: [
      .headerSearchPath("Classes"),
    ]),
  ]
)