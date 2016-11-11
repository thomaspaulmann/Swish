import CommandLine

public struct SwiftPackageManager {

    private let command = "/usr/bin/swift"
    private let commandLine = CommandLine()

    public func initialise(type: PackageType = .empty) {
        let arguments = [
            "package",
            "init",
            "\(type)"
        ]

        let result = commandLine.execute(command, with: arguments)

        switch result {
        case .output(let output):
            print(output)
        case .error(let message):
            print(message)
        }
    }

}
