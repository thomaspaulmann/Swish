# Swift External Build

This tutorial describes how to build Swift projects on a remote Linux machine right outta Xcode. It targets the early adopters of Server-Side Swift and should minimize the gap between macOS and Linux. It's **work in progress**, so please report any issues that you're running in.

## Prerequisites:

* A Remote Machine that running Linux and Swift
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

Your good to go, let's go 💪

## Configure Xcode

1. Add a new target and select **External Build System** (in cross-plattform tab) as template.
3. Set `/bin/bash` as the build tool of the target.
4. Drop the `swiftExternalBuild` script into your project root.
5. Select your generated target and set arguments (in info tab) to `${SRCROOT}/swiftExternalBuild -u <username> -h <hostname>`
6. Build your project (with the newly created target) and enjoy your compiled swift code on your remote machine.

## Run Project

Open a new terminal window and connect to your remote machine via SSH.

```
ssh <username>@<hostname>
```

Navigate to the synced project directory and run your project as usual.

```
cd ~/SwiftExternalBuild/<projectname>
.build/debug/<projectname>
```
