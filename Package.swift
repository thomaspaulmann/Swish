import PackageDescription

let package = Package(
    name: "Swish",
    targets: [
        Target(name: "Swish", dependencies: ["Sync"]),
        Target(name: "Sync", dependencies: ["CommandLine"])
    ],
    dependencies: [
        .Package(url: "https://github.com/kylef/Commander", majorVersion: 0)
    ]
)
