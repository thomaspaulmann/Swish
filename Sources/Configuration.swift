import Foundation

struct Configuration: Configurable {

    let username: String
    let hostname: String

    var source: URL?
    var destination: URL?

    init(username: String, hostname: String, source: URL? = nil, destination: URL? = nil) {
        self.username = username
        self.hostname = hostname
        self.source = source
        self.destination = destination
    }

}
