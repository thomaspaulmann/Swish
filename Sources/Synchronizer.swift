import Foundation

struct Synchronizer: Syncable {

    func sync(from source: String, to destination: String) {
        print("Sync from \(source) to \(destination)...")
    }

}
