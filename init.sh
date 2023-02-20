curl -L http://install.ohmyz.sh | sh
# use homebrew to install nvm
# curl https://raw.github.com/creationix/nvm/v0.5.0/install.sh | sh
rm ~/.zshrc

ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/git/gitignore ~/.gitignore
ln -s ~/.dotfiles/git/git-completion.bash ~/.git-completion.bash

ln -s ~/.dotfiles/config ~/.config
ln -s ~/.dotfiles/editorconfig ~/.editorconfig
ln -s ~/.dotfiles/mackup.cfg ~/.mackup.cfg
ln -s ~/.dotfiles/prettierrc ~/.prettierrc
ln -s ~/.dotfiles/screenrc ~/.screenrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc ~/.zshrc

#mv ~/.vim ~/.vim_back
mkdir ~/.vim
ln -s ~/.dotfiles/vim/vim/* ~/.vim/

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
