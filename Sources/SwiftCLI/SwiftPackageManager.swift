import CommandLine

public struct SwiftPackageManager {

    private let command = "/usr/bin/swift"

    public func initialise(type: SwiftPackageType? = nil) {
        let arguments = ["package", "init", type?.rawValue ?? ""]

        let result = CommandLine.execute(command, with: arguments)

        switch result {
        case .output(let output):
            print(output)
        case .error(let message):
            print(message)
        }
    }

}
