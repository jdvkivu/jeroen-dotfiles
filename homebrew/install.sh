#!/bin/bash
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

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
echo "Updating brew"
brew update

# Install cask
brew install caskroom/cask/brew-cask

# Get alternate versions
brew tap homebrew/versions
brew tap caskroom/versions

# Upgrade any already-installed formulae
echo "Upgrading installed formulas"
brew upgrade

####################################
# Utils                            #
####################################
brew install ag

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names

# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
# regular bash-completion package is held back to an older release, so we get latest from versions.
#   github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4
brew install homebrew/versions/bash-completion2

# nice folder size utility
brew install ncdu 

brew install tree
# brew install coreutils 


####################################
# Graph tools                      #
####################################
brew cask install sublime-text
brew cask install keepassx
brew cask install dash

####################################
# Dev                              #
####################################
brew cask install sourcetree
brew cask install java7
brew      install maven
brew cask install eclipse-java
brew cask install intellij-idea


####################################
# Virtual machine tools            #
####################################

brew cask install virtualbox
brew cask install vagrant
brew cask install boot2docker


####################################
# Entertainment                    #
####################################

brew cask install spotify


# Remove outdated versions from the cellar
# brew cleanup