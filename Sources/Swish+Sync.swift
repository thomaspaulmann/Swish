import Foundation
import Sync

extension Swish {

    func sync(from source: URL, to destination: URL) {
        synchronizer.sync(from: source, to: destination)
    }

}
