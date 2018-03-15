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
# find it all, see also http://conqueringthecommandline.com/book/ack_ag
brew install ag

# text based browser
brew install links

# network utility
brew install mtr

# cpu monitor
brew install htop

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
brew install bash-completion@2

# nice folder size utility
brew install ncdu 

brew install tree
brew install gpg

# 7z
brew cask install keka

####################################
# Graph utils                      #
####################################
#brew cask install sublime-text
brew cask install atom
#brew cask install komodo-edit
brew cask install keepassx
#brew cask install dash
brew cask install disk-inventory-x
brew cask install dropbox
#brew cask install iterm2
brew cask install skype

# image writer
brew cask install etcher

# activity monitoring
#brew cask install xrg

# vpn connectivity
brew cask install viscosity

# video playback and conversions
brew cask install vlc
brew cask install handbrake

####################################
# Browsers                         #
####################################
brew cask install google-chrome
brew cask install firefox

####################################
# Office                           #
####################################
#brew cask install openoffice

####################################
# Dev                              #
####################################
brew cask install sourcetree
brew cask install gitup

# Java 8
brew cask install java

# Java 7
#brew cask install java7

brew      install maven
brew      install maven-completion
#brew      install gradle
#brew cask install eclipse-java
brew cask install intellij-idea-ce

#brew cask install arduino

# MySQL server + client
brew install mysql
brew cask install sequel-pro

# Heroku toolbelt
#brew install heroku

# Openshift
#brew install openshift-cli

####################################
# Virtual machine tools            #
####################################

brew cask install virtualbox
brew cask install vagrant

# Docker stuff
brew cask install docker
#brew install docker-machine
#brew install docker-compose
#brew cask install kitematic

####################################
# Entertainment                    #
####################################

brew cask install spotify

# Remove outdated versions from the cellar
# brew cleanup
