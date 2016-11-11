import Commander
import Sync

// MARK: - Properties

private let version = "1.4"
private let configuration = Configuration(username: "username", hostname: "hostname")
private let swish = Swish(with: configuration)

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
