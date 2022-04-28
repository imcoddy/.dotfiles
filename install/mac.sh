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
  ack
  autojump
  cask
  ccat
  # caskroom/cask/brew-cask
  git
  git-flow
  htop
  # graphicsmagick
  mackup
  mas
  mpv
  ncdu
  nvm
  tldr
  trash
  tree
  vim
  wget
  youtube-dl
  # webkit2png
  # rename
  # zopfli
  # ffmpeg
  # python
  # sshfs
  # node
  # hub
)

echo "Installing binaries..."
brew install ${binaries[@]}

# Apps
apps=(
  alfred
  android-file-transfer
  appcleaner
  bartender
  bettertouchtool
  calibre
  cheatsheet
  dash
  dropbox
  fantastical
  flux
  google-chrome
  google-japanese-ime
  itsycal
  karabiner
  kitematic
  ngrok
  openemu
  pdfexpert
  qlcolorcode
  qlimagesize
  qlmarkdown
  qlprettypatch
  qlstephen
  qlvideo
  quicklook-csv
  quicklook-json
  quicklookase
  #rescuetime
  resilio-sync
  screenflick
  squirrel
  steam
  suspicious-package
  #textexpander
  #thunder
  #vagrant
  #virtualbox
  webpquicklook
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install --cask --appdir="/Applications" ${apps[@]}


mkdir -p ~/Library/Application\ Support/iTerm2/DynamicProfiles
ln -s ~/.dotfiles/iTerm2.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/iTerm2.json
