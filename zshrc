# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    autojump
    brew
    extract
    git
    #git-extra
    git-flow
    #git-open
    gulp
    heroku
    macos
    node
    npm
    tmux
    vagrant
    vi-mode
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#autoload bashcompinit
#bashcompinit
source ~/.git-completion.bash
source ~/.nvm/nvm.sh
nvm use v18.17.1
#zstyle ':completion:*:*:git:*' script ~/.git-completion.bash

# allow approximate
#zstyle ':completion:*' completer _complete _match _approximate
#zstyle ':completion:*:match:*' original only
#zstyle ':completion:*:approximate:*' max-errors 1 numeric

# tab completion for PID :D
#zstyle ':completion:*:*:kill:*' menu yes select
#zstyle ':completion:*:kill:*' force-list always

# cd not select parent dir
#zstyle ':completion:*:cd:*' ignore-parents parent pwd

# useful for path editing — backward-delete-word, but with / as additional delimiter
backward-delete-to-slash () {
  local WORDCHARS=${WORDCHARS//\//}
  zle .backward-delete-word
}
zle -N backward-delete-to-slash

setopt no_nomatch

# Normal aliases
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .1='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias :q="exit"
alias 7za="7z a -mhe=on "
alias 7zap="7z a -mhe=on -p "
alias a="atom"
alias b='brew'
alias bc='brew cask'
alias bci='brew install --cask --appdir="/Applications"'
alias bcs='brew search'
alias bcu='brew uninstall --cask'
alias bi='brew install'
alias bs='brew search'
alias c="clear"
alias cask="brew cask"
alias cd..='cd ..'
alias cp="cp -iv"
alias csc="cat ~/.ssh/config"
alias dir='ls -1'
alias dm="docker-machine"
alias dme="docker-machine env"
alias do="docker"
alias doc="docker container"
alias dol="docker logs"
alias dom="docker-machine"
alias dome="docker-machine env"
alias dc="docker-compose"
alias dcd="docker-compose down"
alias dcr="docker-compose restart"
alias dcrm="docker-compose rm"
alias dcu="docker-compose up"
alias egrep='egrep --color=auto'
alias ex="exit"
alias f='find |grep'
alias fgrep='fgrep --color=auto'
alias fixme='grep "FIXME" -r .'
alias gb="git branch"
alias gbi="gitbook init"
alias gbs="gitbook serve"
alias gbc="git branch --merged | grep 'feature' | xargs -n 1 git branch -d"
alias gcb="git branch --merged | grep 'feature' | xargs -n 1 git branch -d"
alias gcl='git clone'
alias gcl1='git clone --depth 1'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gcl1='git clone --depth=1'
alias gd="git diff"
alias gff='git flow feature finish'
alias gfs='git flow feature start'
alias ginf='git info'
alias ginfo='git info'
alias gn='grunt'
alias gnt='grunt test'
alias gns='grunt serve'
alias gpl='git pull'
alias gplod='git pull origin develop'
alias gplom='git pull origin master'
alias gplud='git pull upstream develop'
alias gplum='git pull upstream master'
alias gps='git push'
alias gpsod='git push origin develop'
alias gpsom='git push origin master'
alias grep='grep --color=auto'
alias greset="rm -rf .git && git init && git add . && git cm 'init' && git fi"
alias gt="git status"
alias glh="g l | head"
alias h='hexo'
alias hd='hexo generate -d'
alias hg='hexo generate'
alias hn='hexo new post'
alias hs='hexo server --watch'
alias lns='ln -s'
alias ls='ls -G' # Mac
alias ls='ls -FHG --color=auto' # Linux
alias lsa='ls -al'
alias lsd='ls -ld *(-/DN)'
alias lss='du -sh *' # List size
#alias m="meteor"
#alias ms="meteor --settings settings.json"
#alias mt="meteor"
alias mv="mv -v"
alias n="node"
alias ni="npm install"
alias nid="npm install --save-dev "
alias nis="npm install --save "
alias nr="npx playwright codegen "
alias nv="nvim"
alias ping='ping -c 5'
alias q="exit"
alias rake="noglob rake"
alias rm="rm -vi"
#alias rm='rm -i --preserve-root'
alias resetgit="rm -rf .git && git init && git add . && git cm 'init' && git fi"
alias sha='shasum -a 256 '
alias t='tree'
alias t2='tree -L 2'
alias t3='tree -L 3'
alias tl='tree -L'
alias todo="grep 'TODO' -r ."
alias tx='tmux'
alias txa='tmux attach'
alias txw='tmux attach -t work'
alias txc='tmux new -s'
alias untar='tar -zxvf '
alias vd='vimdiff'
alias v='nvim -p'
alias vc='vim ~/.ssh/config'
alias vi='vim -p'
alias vim='vim -p'
alias vin='vim -p'
#alias vg='vagrant'
#alias vgh='vagrant halt'
#alias vgs='vagrant ssh'
#alias vgu='vagrant up'
alias vs='code '
alias vsc='vim ~/.ssh/config'
alias vsk='vim ~/.ssh/known_hosts'
alias vt='vim ~/.tmux.conf'
alias vv='vim ~/.vimrc'
alias vw='vim ~/Library/Rime/wubi_pinyin.extended.dict.yaml'
alias vz='vim ~/.zshrc'
alias yd='youtube-dl'
alias w='cd ~/workspace/git/'
alias wget='wget -c'
alias ws='cd ~/workspace/git/'
alias z="exit"

alias ai="sudo apt-get install"
alias auu="sudo apt-get update && sudo apt-get upgrade"
alias mc="mycli -u user -p -A dbname"
alias rn="sudo service nginx restart"
alias rp="sudo service php7.2-fpm restart"
alias tn="sudo tail -f /var/log/nginx/*.log"
alias tp="sudo tail -f /var/log/php-fpm/*.log"

# command L equivalent to command |less
alias -g L='|less'

# command S equivalent to command &> /dev/null &
alias -g S='&> /dev/null &'

alias -g G='|grep'

# Add autojump.sh
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Add bash completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

# Add iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add nvm source
source /usr/local/opt/nvm/nvm.sh

eval $(thefuck --alias)
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
