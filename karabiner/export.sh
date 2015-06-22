#/bin/sh

pwd
cd ~/.dotfiles/karabiner
/Applications/Karabiner.app/Contents/Library/bin/karabiner export > import.sh
chmod ug+x import.sh
