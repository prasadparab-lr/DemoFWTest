#!/bin/sh

# Install CocoaPods using Homebrew.
brew install cocoapods


## create the `netrc` file
touch ~/.netrc

## write the machine name into the `netrc file
echo "machine github.com login elitesdk password  ${SDK_TOKEN}\n\n" > ~/.netrc
## write the username into the `netrc file
#echo "login elitesdk" >> ~/.netrc 
## write the password, obtained from an environment variables, into the `netrc file
#echo "password ${SDK_TOKEN}" >> ~/.netrc


echo "machine github.com login prapa1190 password  ${NEW_TOKEN}" > ~/.netrc


chmod 600 ~/.netrc


# Install dependencies you manage with CocoaPods.
pod install
