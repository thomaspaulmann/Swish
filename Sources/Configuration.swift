import Foundation

struct Configuration: Configurable {

    let username: String
    let hostname: String
    let source: String
    let destination: String

    init(username: String, hostname: String, source: String = ".", destination: String = "~/Swish") {
        self.username = username
        self.hostname = hostname
        self.source = source
        self.destination = destination
    }

}
