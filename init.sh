curl -L http://install.ohmyz.sh | sh
curl https://raw.github.com/creationix/nvm/v0.5.0/install.sh | sh
rm ~/.zshrc

ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore ~/.gitignore
ln -s ~/.dotfiles/git/git-completion.bash ~/.git-completion.bash

ln -s ~/.dotfiles/atom ~/.atom
ln -s ~/.dotfiles/screenrc ~/.screenrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc ~/.zshrc

#mv ~/.vim ~/.vim_back
mkdir ~/.vim
ln -s ~/.dotfiles/vim/vim/* ~/.vim/

