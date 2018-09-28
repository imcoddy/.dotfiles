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
  cask
  # caskroom/cask/brew-cask
  git
  git-flow
  mackup
  mpv
  nvm
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
  android-file-transfer
  appcleaner
  atom
  bartender
  bettertouchtool
  bittorrent-sync
  calibre
  cheatsheet
  dash
  dropbox
  enpass
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
  qlcolorcode
  qlimagesize
  qlmarkdown
  qlprettypatch
  qlstephen
  qlstephen
  qlvideo
  quicklook-csv
  quicklook-json
  quicklook-json
  quicklookase
  suspicious-package
  webpquicklook
  rescuetime
  screenflick
  slack
  spectacle
  squirrel
  steam
  textexpander
  thunder
  typora
  vagrant
  virtualbox
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}


mkdir -p ~/Library/Application\ Support/iTerm2/DynamicProfiles
ln -s ~/.dotfiles/iTerm2.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/iTerm2.json
