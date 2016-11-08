import Foundation

#if !os(macOS)
typealias Process = Task
#endif

extension Process {

    /// This is a really naive implementation of a Remote Process 🙃
    func launch(on machine: Machine = .local) {
        switch machine {
        case .local:
            launch()
            break
        case .remote(let configuration):
            // TODO: Change LaunchPath to SSH, and move "local" launch path to arguments

            // If there are no arguments, do nothing.
            guard var arguments = arguments else {
                return
            }

            // Prefix arguments with SSH command
            arguments.insert(configuration.sshCommand, at: 0)

            launch()
            break
        }
    }

}
