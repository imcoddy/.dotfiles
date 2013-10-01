# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"
#arrow.zsh-theme
#clean.zsh-theme
#cloud.zsh-theme
#candy-kingdom
#darkblood.zsh-theme
#fino.zsh-theme
#fletcherm.zsh-theme
#fox.zsh-theme
#frisk.zsh-theme
#gnzh.zsh-theme
#jonathan.zsh-theme
#juanghurtado.zsh-theme

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#add database user
#grant select,insert,delete,update,create,drop,file,alter,index on *.* to 'gree' identified by 'password_you_want_to_set';
#flush privileges;
alias mysql="mysql -u gree -p"
alias mysqltestdb="mysql -u root -h 116.93.145.228 -P 13806 -p"
alias mysqlrealdb="mysql -u root -h 116.93.145.228 -P 13806 -p"
alias gt="git status"
alias gd="git diff"
alias gclean="git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"

#autoload -U compinit compinit

#autoload bashcompinit
#bashcompinit
source ~/.git-completion.bash
source ~/.nvm/nvm.sh
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
#backward-delete-to-slash () {
  #local WORDCHARS=${WORDCHARS//\//}
  #zle .backward-delete-word
#}
#zle -N backward-delete-to-slash

# Normal aliases
alias ls='ls --color=auto -F'
alias vim='vim -p'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias f='find |grep'
alias c="clear"
alias ex="exit"
alias z="exit"
alias q="exit"
alias :q="exit"
alias cz="cd ~/.dotfiles/"
alias dir='ls -1'
alias gvim='gvim -geom 82x35'
alias ..='cd ..'
alias w='cd /home/di-qiu/workspace/infrainvoice/infrainvoice/'
alias ws='cd /home/di-qiu/workspace/'
alias wa='cd /home/di-qiu/workspace/infrainvoice/infrainvoice/fuel/app/'
alias wap='cd /home/di-qiu/workspace/infrainvoice/infrainvoice/public/'
alias wam='cd /home/gree/xgree/tracker/frontend/stdashboard/class/Module/'
alias was='cd /home/gree/xgree/tracker/frontend/stdashboard/'
alias watm='cd /home/gree/xgree/tracker/frontend/stdashboard/test/Module/'
alias wat='cd /home/gree/xgree/tracker/frontend/stdashboard/tpl/'
alias wb='cd /home/di-qiu/workspace/sites/blog/'
alias wba='cd /home/di-qiu/workspace/sites/blog/fuel/app/'
alias wdf='cd /home/gree/xgree/tracker/Service/stadmaster/class/Cascade/DataFormat/'
alias wmo='cd /home/gree/xgree/tracker/Service/stadmaster/class/Model/'
alias ws='cd /home/gree/xgree/tracker/Service/stadmaster/'
alias wst='cd /home/gree/xgree/tracker/Service/stadmaster/test/'
alias wt='cd /home/gree/xgree/tracker/Service/Tracker/'
alias wtt='cd /home/gree/xgree/tracker/Service/Tracker/test/class/'
alias wtr='cd /home/gree/xgree/tracker/Service/Tracker/class/Report/Data/'
alias gge='cd /home/gree/etc/'

alias vim='vim -p'
alias vt='vim ~/.tmux.conf'
alias vz='vim ~/.zshrc'
alias vv='vim ~/.vimrc'
alias fixme='grep "FIXME" -r .'
alias todo="grep 'TODO' -r ."

alias gree_update='cd /home/gree && /home/gree/bin/update_dev.php -b -f'

alias tx='tmux'
alias txa='tmux attach'
alias txc='tmux new -s'

alias s='screen -S'
alias sls='screen -ls '
alias sr='screen -R'
# command L equivalent to command |less
alias -g L='|less'

# command S equivalent to command &> /dev/null &
alias -g S='&> /dev/null &'


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
