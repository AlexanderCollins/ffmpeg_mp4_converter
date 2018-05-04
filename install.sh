#!/bin/bash
cd "$(dirname "$0")"
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Brew is not installed. Installing Brew (A package manager which will install ffmpeg a file converter)"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Running brew update"
    brew update
    echo "Running brew doctor"
    brew doctor
fi

echo "Installing ffmpeg, a file converter."
brew install ffmpeg

echo "Creating directories ./processed and ./to_process"
mkdir processed
mkdir to_process
