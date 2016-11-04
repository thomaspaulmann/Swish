#!/bin/bash
# Any subsequent(*) commands which fail will cause the shell script to exit immediately
set -e

# Input

invalidUsage() {
  echo "⚠️ Invalid Usage: $0
  [-u = Username of remote machine]
  [-h = Hostname of remote machine]
  [-d = Destination on remote machine (Default: ~/ExternalBuild/<projectname>)]

  Usage: sh externalBuild.sh -u <username> -h <hostname>"
  exit 1
}

while getopts ":u:h:d" o; do
    case "${o}" in
        u)
            user=${OPTARG}
            ;;
        h)
            host=${OPTARG}
            ;;
        d)
            destination=${OPTARG}
            ;;
        *)
            invalidUsage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${user}" ] || [ -z "${host}" ]; then
  invalidUsage
fi

if [ -z "${destination}" ]; then
  projectName=${PWD##*/}
  destination="~/ExternalBuild/${projectName}"
fi

# Sync

echo "🚀 Start syncing project to ${user}@${host}:${destination}"

rsync -azP --exclude=".build*" --exclude="Packages/*" --exclude="*.xcodeproj*" --exclude="*.DS_Store*" --exclude="externalBuild.sh" . ${user}@${host}:${destination}

echo -e "💻 Did sync project to remote machine"

# Build

echo "⚒ Start building project"

ssh linux@linux-mate.local "source ~/.bash_profile; cd ~/ExternalBuild/${projectName}; swift build"

echo "✌️ Did build project on your remote machine"

# Finish
