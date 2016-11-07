import CommandLine

public struct SwiftPackageManager {

    private let commandLine = CommandLine()

    public init() { }

    public func build(clean: Bool = false) {
        let command = "/usr/bin/swift"
        let arguments = ["package", clean ? "build --clean" : "build"]

        let result = commandLine.execute(command, with: arguments)

        switch result {
        case .output(let output):
            print(output)
        case .error(let message):
            print(message)
        }

    }

}
