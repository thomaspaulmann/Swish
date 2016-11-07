import CommandLine

public struct SwiftPackageManager {

    fileprivate let command = "/usr/bin/swift"
    fileprivate let commandLine = CommandLine()

    public func initialise(type: SwiftPackageType? = nil) {
        let arguments = ["package", "init", type?.rawValue ?? ""]

        let result = commandLine.execute(command, with: arguments)

        switch result {
        case .output(let output):
            print(output)
        case .error(let message):
            print(message)
        }
    }

}
