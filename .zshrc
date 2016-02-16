export EDITOR=/usr/bin/vim
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey '^R' history-incremental-search-backward
setopt hist_ignore_all_dups
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit promptinit colors
colors
compinit
promptinit
setopt prompt_subst

RPROMPT='$(bash ~/.dotfiles/bin/git-cwd-info.rb)'

zle-line-init() { zle -K vicmd; }
zle -N zle-line-init

# Path settings
#
# Heroku
export PATH=/usr/local/heroku/bin:$PATH
# Go
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin
# Add RVM to PATH for scripting
[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
export PATH=./bin:/Users/opahk/bin:/Users/opahk/code/living-in-a-box/bin:$PATH
export SYNC_DOTFILES=1
export DOTFILES=".zshrc .zsh_history .dotfiles .bash_history .bashrc .gitconfig .rspec .pry_history .secret .ssh"

# aliases
#
alias bi='bundle install'
alias bu='bundle update'

alias g='git '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m '
alias gco='git checkout '
alias gcom='git checkout master '
alias gd='git diff '
alias gdc='git diff --cached '
alias gm='git merge '
alias gmm='git merge master '
alias gpl='git pull '
alias gps='git push '
alias gst='git status '
alias gsh='git stash '
alias gsa='git stash apply '
alias gfa='for remote in `git branch -r | grep -v \>`; do git branch --track ${remote#origin/} $remote; done && git fetch --all'

alias ds='dev shell'
alias dss='dev kill && dev start && dev shell'

alias h='heroku'

alias r='ruby'
alias rs='bundle exec rspec'

alias rss='bundle exec rails s'
alias rc='bundle exec rails c'

alias s='sudo'
alias sa='sudo apt-get'

alias ss='eval `ssh-agent -s` && ssh-add ~/.ssh/id_rsa'

alias k9='killall -9'

alias cpd='bundle exec cap production deploy'
alias cpc='bundle exec cap production rails:console'
alias cpl='bundle exec cap production logs'
alias csd='bundle exec cap staging deploy'
alias csc='bundle exec cap staging rails:console'
alias csl='bundle exec cap staging logs'
alias be='bundle exec'
alias bul='bundle update --local'

[ -z "$HOME" ] && export HOME=/

ulimit -n 65536
ulimit -u 2048

source /usr/local/share/zsh/site-functions/_aws
