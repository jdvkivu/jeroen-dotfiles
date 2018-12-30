#!/bin/bash

# Check and if necessary install Homebrew and Caskroom
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
echo "Updating brew"
brew update

# Upgrade any already-installed formulae
echo "Upgrading installed formulas"
brew upgrade

echo "Checking brew"
brew doctor
