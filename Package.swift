import PackageDescription

let package = Package(
    name: "Swish",
    targets: [
        Target(name: "Swish", dependencies: ["SwishCommands"]),
    ],
    dependencies: [
        .Package(url: "https://github.com/kylef/Commander", majorVersion: 0)
    ]
)
