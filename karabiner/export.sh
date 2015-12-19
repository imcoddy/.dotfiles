#/bin/sh

pwd
cd ~/.dotfiles/karabiner
echo '#/bin/sh' > import.sh
echo 'cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner' >> import.sh
/Applications/Karabiner.app/Contents/Library/bin/karabiner export > tmp.txt
cat tmp.txt | sort | grep 'set' >> import.sh
echo 'ln -sfv ~/.dotfiles/karabiner/private.xml ~/Library/Application\ Support/Karabiner/private.xml' >> import.sh
chmod ug+x import.sh
rm tmp.txt
