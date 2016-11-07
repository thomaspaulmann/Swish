extension Swish {

    func build(clean: Bool = false) {
        if clean {
            print("Clean build...")
        } else {
            do {
                let source = configuration.source
                let destination = "\(configuration.username)@\(configuration.hostname):\(configuration.destination)"

                try synchronizer.sync(from: source, to: destination)

                swiftCLI.build()
            } catch let error {
                print(error)
            }

            print("Build...")
        }
    }

}
