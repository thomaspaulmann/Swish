import CommandLine

public struct SwiftCLI {

    public let package = SwiftPackageManager()

    private let command = "/usr/bin/swift"
    private let commandLine = CommandLine()

    public init() { }

    public func build(clean: Bool = false) {
        let arguments = [clean ? "build --clean" : "build"]

        let result = commandLine.execute(command, with: arguments)

        switch result {
        case .output(let output):
            print(output)
        case .error(let message):
            print(message)
        }
    }

}
