import Foundation
import Commander
import Sync

// MARK: - Properties

private let version = "1.4"

var swish = Swish()

// MARK: - Configuration

do {
    let currentDirectory = FileManager.default.currentDirectoryPath
    let url = URL(fileURLWithPath: currentDirectory).appendingPathComponent("Swish")
    let configuration = try Configuration(fromURL: url)

    swish.configuration = configuration
} catch let error {
    print(error)
}

// MARK: - Command Line Interface

Group {
    $0.command("init") {
        swish.initialise()
    }

    $0.command("build", Flag("clean", description: "Makes a clean build.")) { clean in
        swish.build(clean: clean)
    }

    $0.command("run") {
        swish.run()
    }

    $0.command("stop") {
        swish.stop()
    }
}.run(version)
