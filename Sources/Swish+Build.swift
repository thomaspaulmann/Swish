extension Swish {

    func build(clean: Bool = false) {
        if clean {
            print("Clean build...")
        } else {
            synchronizer.sync(from: configuration.source, to: configuration.destination)

            print("Build...")
        }
    }

}
