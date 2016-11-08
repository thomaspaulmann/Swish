import CommandLine

public struct Swift {

    public let package = SwiftPackageManager()

    private let command = "/usr/bin/swift"

    public init() { }

    public func build(type: BuildType = .debug, clean: Bool = false) {
        let arguments = [
            "build",
            "\(type)",
            clean ? "--clean" : ""
        ]

        let result = CommandLine.execute(command, with: arguments)

        print(result)
    }

    public func version() {
        let arguments = ["--version"]

        let result = CommandLine.execute(command, with: arguments)

        print(result)
    }

}
