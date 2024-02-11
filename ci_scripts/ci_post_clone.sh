#!/bin/sh

# Install CocoaPods using Homebrew.
brew install cocoapods


## create the `netrc` file
touch ~/.netrc

## write the machine name into the `netrc file
echo "machine github.com" > ~/.netrc
## write the username into the `netrc file
echo "login elitesdk" >> ~/.netrc 
## write the password, obtained from an environment variable, into the `netrc file
echo "password ${SDK_TOKEN}" >> ~/.netrc


# Install dependencies you manage with CocoaPods.
pod install