import Commander

Group {
    $0.command("init") {
        print("Init Swish...")
    }

    $0.command("build", Flag("clean", description: "Makes a clean build.")) { clean in
        if clean {
            print("Clean build Swish...")
        } else {
            print("Build Swish...")
        }
    }

    $0.command("run") {
        print("Run Swish...")
    }

    $0.command("stop") {
        print("Stop Swish...")
    }
}.run()
