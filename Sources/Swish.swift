import Sync

struct Swish {

    let configuration: Configurable
    let synchronizer = Synchronizer()
    let swift = Swift()

    init(with configuration: Configurable) {
        self.configuration = configuration
    }

}
