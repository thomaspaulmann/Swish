import PackageDescription

let package = Package(
    name: "Swish",
    dependencies: [
        .Package(url: "https://github.com/kylef/Commander.git", majorVersion: 0),
        .Package(url: "https://github.com/swish-server/Sync.git", majorVersion: 0),
        .Package(url: "https://github.com/swish-server/CommandLine.git", majorVersion: 0),
    ]
)
