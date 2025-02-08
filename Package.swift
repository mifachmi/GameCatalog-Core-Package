// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Core",
    platforms: [
        .iOS(.v17),
        .macOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Core",
            targets: ["Core"])
    ],
    dependencies: [
        // Added dependencies for Alamofire, Kingfisher, RxSwift, and Swinject
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.0")),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "8.1.3"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Core",
            dependencies: [
                "Alamofire",
                "Kingfisher",
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                "Swinject"
            ]),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"]
        )
    ]
)
