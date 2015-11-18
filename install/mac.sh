#!/bin/bash

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
fi

# Update homebrew recipes
brew update

# Install brew packages

binaries=(
  # graphicsmagick
  caskroom/cask/brew-cask
  git
  git-flow
  mackup
  tree
  # webkit2png
  # rename
  # zopfli
  # ffmpeg
  # python
  # sshfs
  # trash
  # node
  # ack
  # hub
)

echo "Installing binaries..."
brew install ${binaries[@]}

# Apps
apps=(
  alfred
  appcleaner
  arq
  atom
  cheatsheet
  cloudup
  dropbox
  firefox
  flux
  google-chrome
  hazel
  iterm2
  nvalt
  qlcolorcode
  qlprettypatch
  qlstephen
  quicklook-csv
  quicklook-json
  screenflick
  seil
  shiori
  sketch
  slack
  spotify
  sublime-text3
  tower
  vagrant
  virtualbox
  vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

brew cask alfred link
