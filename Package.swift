// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "SegmentAmplitude",
  platforms: [
    .iOS(.v12),
  ],
  products: [
    .library(
      name: "SegmentAmplitude",
      targets: ["SegmentAmplitude"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: "git@github.com:segmentio/analytics-ios.git", from: "3.6.0"),
    // .package(url: "git@github.com:amplitude/Amplitude-iOS.git", from: "4.0.0"),
  ],
  targets: [
    .target(
      name: "SegmentAmplitude",
      dependencies: []),
      // dependencies: ["Analytics", "Amplitude"]),
  ]
)