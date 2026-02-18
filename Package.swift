// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TektonParsers",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TektonParsers",
            targets: ["TektonParsers"]
        ),
    ],
	dependencies: [
		.package(url: "https://github.com/antlr/antlr4.git", from: "4.13.2")
	],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TektonParsers",
			dependencies: [.product(name: "Antlr4Static", package: "antlr4")],
//			swiftSettings: [
//				.unsafeFlags(["-Xfrontend", "-warn-concurrency", "-enable-actor-data-race-checks=false"])
//			]
		),
//        .testTarget(
//            name: "TektonParsersTests",
//            dependencies: ["TektonParsers"]
//        ),
    ]
)
