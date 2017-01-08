import Foundation
import Sync

class Swish {

    var configuration: Configuration? // TODO: This should be lazy initialized when we need it. If there is no file to read the configuration -> Throw an error!

    let synchronizer = Synchronizer()
    let swift = Swift()

    // MARK: - Initialiser

    init(with configuration: Configuration? = nil) {
        self.configuration = configuration
    }

}
