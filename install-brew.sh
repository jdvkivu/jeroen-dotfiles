#!/bin/bash

# Check and if necessary install Homebrew and Caskroom
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
echo "Updating brew"
brew update

# Install cask
echo "Installing Caskroom"
brew install caskroom/cask/brew-cask

# Get alternate versions
brew tap homebrew/versions
brew tap caskroom/versions

# Upgrade any already-installed formulae
echo "Upgrading installed formulas"
brew upgrade

echo "Checking brew"
brew doctor