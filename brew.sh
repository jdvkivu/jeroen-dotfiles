#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
./install-brew.sh

# Install command-line tools using Homebrew


####################################
# Utils                            #
####################################
brew install ag

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
# Install some other useful utilities like `sponge`
#brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
#brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
#brew install gnu-sed --with-default-names

# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash

# regular bash-completion package is held back to an older release, so we get latest from versions.
#   github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4
brew install homebrew/versions/bash-completion2

# nice folder size utility
brew install ncdu 
brew install tree
brew install gpg

####################################
# Graph tools                      #
####################################
brew cask install sublime-text
brew cask install keepassx
brew cask install dash
brew cask install disk-inventory-x

####################################
# Browsers                         #
####################################
#brew cask install google-chrome
brew cask install firefox

####################################
# Dev                              #
####################################
brew cask install sourcetree
brew cask install gitup

# Java 8
brew cask install java

# Java 7
brew cask install java7

brew      install maven
brew      install homebrew/completions/maven-completion
brew      install gradle
brew cask install eclipse-java
brew cask install intellij-idea-ce
# install spring boot cli from pivotal tap

brew cask install arduino

####################################
# Virtual machine tools            #
####################################

brew cask install virtualbox
brew cask install vagrant

# Docker stuff
brew install docker
brew install docker-machine
brew install docker-compose
brew install homebrew/completions/docker-completion
brew install homebrew/completions/docker-machine-completion
brew cask install kitematic

####################################
# Entertainment                    #
####################################

brew cask install spotify

# Remove outdated versions from the cellar
# brew cleanup
