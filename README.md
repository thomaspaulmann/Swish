![Swish Logo](https://github.com/thomaspaulmann/Swish/raw/master/Design/Exports/Logo.png)

Swish is a simple script for remote building your Swift projects on a Linux machine. Why is that so cool? You can develop in Xcode on macOS and can use an External Build System to deploy your code on Linux.

The next chapters are all about integrating Swish in Xcode and describes how to build Swift projects on a remote machine right outta Xcode. It targets the early adopters of Server-Side Swift and should minimize the gap between macOS and Linux. It's **work in progress**, so please report any issues that you're running in.

## Prerequisites:

* A Remote Machine that running Linux and Swift ([Here](/Scripts/setup-swift-3.0-arm.sh) is an installation script for a RaspberryPi 3)
* SSH KeyPair

## Setup SSH Authentication

First you'll need to generate a public/private keypair:

```
ssh-keygen -t rsa
```

Follow the prompts. When it asks if you want to protect the key with a passphrase, you should say `YES`!

Now, assuming your ssh key exists, you can install it on your remote machine by running:

```
cat ~/.ssh/id_rsa.pub | ssh <username>@<hostname> "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
```

You can start a new ssh session. You'll have to enter the password, but this should be the last time you need to do this.

```
ssh <username>@<hostname>
```

Your good to go 💪

## Installation

Download the [latest release](https://github.com/thomaspaulmann/Swish/releases/latest), extract it and move the `Swish` script to `/usr/local/bin`.

```
curl -OL https://github.com/thomaspaulmann/Swish/archive/X.Y.Z.tar.gz
tar xzvf X.Y.Z.tar.gz
cp Swish-X.Y.Z/Scripts/swish /usr/local/bin
```

Now you can run `swish` in your terminal.

*Note:* Waiting for some stars to add `Swish` to [Homebrew](https://github.com/Homebrew/homebrew-core) 🙃

## Configure Xcode

1. Add a new target and select **External Build System** (in cross-plattform tab) as template.
2. Set `/bin/bash` as the build tool of the target.
3. Select your generated target and set arguments (in info tab) to `swish <username> <hostname>`
4. Build your project (with the newly created target) and enjoy your compiled swift code on your remote machine.

## Run Project

Open a new terminal window and connect to your remote machine via SSH.

```
ssh <username>@<hostname>
```

Navigate to the synced project directory and run your project as usual.

```
cd ~/Swish/<projectname>
.build/debug/<projectname>
```

## Thanks

* Juan Hodgson for the ['Lazer 84'-Font](https://www.behance.net/gallery/31261857/LAZER-84-Free-Font)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
