import PackageDescription

let package = Package(
    name: "Swish",
    targets: [
        Target(name: "Swish", dependencies: ["Sync", "SwiftCLI"]),
        Target(name: "Sync", dependencies: ["CommandLine"]),
        Target(name: "SwiftCLI", dependencies: ["CommandLine"])
    ],
    dependencies: [
        .Package(url: "https://github.com/kylef/Commander", majorVersion: 0)
    ]
)
