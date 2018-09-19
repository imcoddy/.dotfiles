#!/bin/bash

echo "Configuring Homebrew..."

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
fi

repositories=(
  mpv-player/mpv
)

# Update homebrew recipes
echo "Updating Homebrew..."
brew update

echo "Adding repositories..."
brew tap ${repositories[@]}

# Install brew packages

binaries=(
  # graphicsmagick
  autojump
  caskroom/cask/brew-cask
  git
  git-flow
  mackup
  mpv
  nvm
  tree
  vim
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
  # alfred
  appcleaner
  atom
  bartender
  bettertouchtool
  cheatsheet
  dropbox
  day-o
  # firefox
  flux
  google-chrome
  google-japanese-ime
  # hazel
  hammerspoon
  karabiner-elements
  qlcolorcode
  qlprettypatch
  qlstephen
  quicklook-csv
  quicklook-json
  screenflick
  # shiori
  # sketch
  # slack
  squirrel
  # sublime-text
  typora
  # tower
  # vagrant
  virtualbox
  # vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}


mkdir -p ~/Library/Application\ Support/iTerm2/DynamicProfiles
ln -s ~/.dotfiles/iTerm2.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/iTerm2.json
