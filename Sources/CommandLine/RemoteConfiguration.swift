public struct RemoteConfiguration {

    let username: String
    let hostname: String

}

extension RemoteConfiguration {

    internal var sshCommand: String {
        return "ssh \(username)@\(hostname); source ~/.bash_profile;"
    }

}
