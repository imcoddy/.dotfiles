#/bin/sh

pwd
cd ~/.dotfiles/karabiner
/Applications/Karabiner.app/Contents/Library/bin/karabiner export > import.sh
echo 'ln -sfv ~/.dotfiles/karabiner/private.xml ~/Library/Application\ Support/Karabiner/private.xml' >> import.sh
chmod ug+x import.sh
