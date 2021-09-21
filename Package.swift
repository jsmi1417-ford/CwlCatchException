// swift-tools-version:5.0
import PackageDescription

let package = Package(
	name: "CwlCatchException",
	platforms: [.iOS(.v9), .macOS(.v10_10), .watchOS(.v3), .tvOS(.v9)],
	products: [
		.library(name: "CwlCatchException", targets: ["CwlCatchException"]),
	],
	targets: [
		.target(name: "CwlCatchException", dependencies: [.target(name: "CwlCatchExceptionSupport")]),
		.target(name: "CwlCatchExceptionSupport"),
		.testTarget(name: "CwlCatchExceptionTests", dependencies: [.target(name: "CwlCatchException")])
	]
)
