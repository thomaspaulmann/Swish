extension Swish {

    func build(clean: Bool = false) {
        guard let configuration = configuration else {
            return
        }

        if clean {
            print("Clean build...")
        } else {
            do {
                let source = configuration.source
                let destination = "\(configuration.machine):\(configuration.destination)"

                try synchronizer.sync(from: source, to: destination)

                swift.build()
            } catch let error {
                print(error)
            }

            print("Build...")
        }
    }

}
