extension Swish {

    func build(clean: Bool = false) {
        if clean {
            print("Clean build...")
        } else {
            do {
                try synchronizer.sync(from: configuration.source, to: configuration.destination)
            } catch let error {
                print(error)
            }

            print("Build...")
        }
    }

}
