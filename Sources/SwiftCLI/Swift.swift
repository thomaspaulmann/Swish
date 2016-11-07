import CommandLine

public struct Swift {

    public let package = SwiftPackageManager()

    private let command = "/usr/bin/swift"

    public init() { }

    public func build(clean: Bool = false) {
        let arguments = [clean ? "build --clean" : "build"]

        let result = CommandLine.execute(command, with: arguments)

        print(result)
    }

    public func version() {
        let arguments = ["--version"]

        let result = CommandLine.execute(command, with: arguments)

        print(result)
    }

}
