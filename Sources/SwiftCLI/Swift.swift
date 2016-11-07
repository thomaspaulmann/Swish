import CommandLine

public struct Swift {

    public let package = SwiftPackageManager()

    private let command = "/usr/bin/swift"
    private let commandLine = CommandLine()

    public init() { }

    public func build(clean: Bool = false) {
        let arguments = [clean ? "build --clean" : "build"]

        let result = commandLine.execute(command, with: arguments)

        print(result)
    }

    public func version() {
        let arguments = ["--version"]

        let result = commandLine.execute(command, with: arguments)

        print(result)
    }

}
