import Foundation


protocol RemoteConfigurable {

    var username: String { get }
    var hostname: String { get }

}

extension RemoteConfigurable {

    var sshCommand: String {
        return "ssh \(username)@\(hostname); source ~/.bash_profile;"
    }

}

extension Process {

    /// This is a really naive implementation of a Remote Process 🙃
    func launchRemote(with configuration: RemoteConfigurable, in destination: String? = nil) {
        // Add to beginning of process commands
        // Launch
        launch()
    }

}
