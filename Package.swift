import PackageDescription

let package = Package(
    name: "Swish",
    dependencies: [
        .Package(url: "https://github.com/kylef/Commander", majorVersion: 0)
    ]
)
