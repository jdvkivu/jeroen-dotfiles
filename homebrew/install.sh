#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Install cask for graphical installations
brew install caskroom/cask/brew-cask

# tap versions for alternate versions of programs
brew tap homebrew/versions
brew tap caskroom/versions

# Install homebrew packages
brew install bash bash-completion
brew install ncdu 
#brew install coreutils spark
#brew install maven

exit 0
