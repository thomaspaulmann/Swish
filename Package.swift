import PackageDescription

let package = Package(
    name: "Swish",
    targets: [
        Target(name: "Swish", dependencies: ["Sync", "SwiftPackageManager"]),
        Target(name: "Sync", dependencies: ["CommandLine"]),
        Target(name: "SwiftPackageManager", dependencies: ["CommandLine"])
    ],
    dependencies: [
        .Package(url: "https://github.com/kylef/Commander", majorVersion: 0)
    ]
)
