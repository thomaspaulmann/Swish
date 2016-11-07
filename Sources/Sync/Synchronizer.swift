import Foundation
import CommandLine

public struct Synchronizer: Syncable {

    private let commandLine = CommandLine()

    public init() {

    }

    public func sync(from source: String, to destination: String) throws {
        print("Sync from \(source) to \(destination)...")

        //let source        = configuration.source
        //let destination   = "\(configuration.username)@\(configuration.hostname):\(configuration.destination)"
        let excludeFilter = "--exclude='.build*' --exclude='Packages/*' --exclude='*.xcodeproj*' --exclude='*.DS_Store*'"

        let command = "/usr/bin/rsync"
        let arguments = ["-azP", source, destination, excludeFilter]

        let result = commandLine.execute(command, with: arguments)

        switch result {
        case .output(let output):
            print(output)
        case .error(let message):
            throw SyncError.couldNotConnect(message)
        }

    }

}
