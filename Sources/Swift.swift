import CommandLine

public struct Swift {

    public let package = SwiftPackageManager()

    private let command = "/usr/bin/swift"
    private let commandLine = CommandLine()

    public init() { }

    public func build(type: BuildType = .debug, clean: Bool = false) {
        let arguments = [
            "build",
            "\(type)",
            clean ? "--clean" : ""
        ]

        let result = commandLine.execute(command, with: arguments)

        print(result)
    }

    public func version() {
        let arguments = ["--version"]

        let result = commandLine.execute(command, with: arguments)

        print(result)
    }

}
