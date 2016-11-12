import Foundation
import Sync

class Swish {

    var configuration: Configuration?

    let synchronizer = Synchronizer()
    let swift = Swift()

    // MARK: - Initialiser

    init(with configuration: Configuration? = nil) {
        self.configuration = configuration
    }

}
