#!/bin/bash
#
# Setup Swift 3.0 for ARM
#
# Prerequisites:
# An Ubuntu distribution for the Raspberry Pi 3. We are using Ubuntu Mate for Raspberry Pi 3.
# - Download:     https://ubuntu-mate.org/blog/ubuntu-mate-for-raspberry-pi-3/
# - Installation: https://www.raspberrypi.org/documentation/installation/installing-images/

set -e

echo "💪  Start setup Swift 3.0 for ARM."

mkdir ~/.swift
cd ~/.swift 

echo "Downloading..."
wget http://swift-arm.ddns.net/job/Swift-3.0-Pi3-ARM-Incremental/lastSuccessfulBuild/artifact/swift-3.0-2016-10-21-RPi23-ubuntu16.04.tar.gz

echo "Extracting..." 
tar xzvf swift-3.0-2016-10-21-RPi23-ubuntu16.04.tar.gz

echo "Cleaning..."
rm ~/.swift/swift-3.0-2016-10-21-RPi23-ubuntu16.04.tar.gz

echo "export PATH=~/.swift/usr/bin:$PATH" >> ~/.bash_profile

swift --version

echo "🎉  Finished setup Swift 3.0 for ARM successfully!"

