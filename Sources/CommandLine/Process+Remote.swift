import Foundation

public protocol RemoteConfigurable {

    var username: String { get }
    var hostname: String { get }

}

extension RemoteConfigurable {

    internal var sshCommand: String {
        return "ssh \(username)@\(hostname); source ~/.bash_profile;"
    }

}

extension Process {

    /// This is a really naive implementation of a Remote Process 🙃
    func launch(with configuration: RemoteConfigurable? = nil) {
        guard let configuration = configuration else {
            launch()
            return
        }

        // If there are no arguments, do nothing.
        guard var arguments = arguments else {
            return
        }

        // Prefix arguments with SSH command
        arguments.insert(configuration.sshCommand, at: 0)

        launch()
    }

}
