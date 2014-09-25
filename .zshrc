export SHELL=/usr/bin/zsh
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
zstyle :compinstall filename '/home/opahk/.zshrc'

autoload -Uz compinit promptinit colors
colors
compinit
promptinit
setopt prompt_subst

RPROMPT='$(bash ~/bin/git-cwd-info.rb)'

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
[[ -s /home/opahk/.nvm/nvm.sh ]] && . /home/opahk/.nvm/nvm.sh # This loads NVM
export PATH=./bin:/home/opahk/bin:$PATH
export SYNC_DOTFILES=1
export DOTFILES=".zsh .zshrc dotfiles .bash_history .bashrc .gitconfig .rspec .pry_history .secret"

# aliases
#
alias bi='bundle install'
alias bu='bundle update'

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gco='git checkout'
alias gcom='git checkout master'
alias gd='git diff'
alias gm='git merge'
alias gmm='git merge master'
alias gpl='git pull'
alias gps='git push'
alias gst='git status'
alias gsh='git stash'
alias gsa='git stash apply'

alias d='dotcloud'
alias di='dotcloud info'
alias dps='dotcloud push --git -b dotcloud'
alias ds='dotcloud scale'
alias dr='dotcloud run'

alias h='heroku'

alias r='ruby'
alias rs='bundle exec rspec'

alias rss='bundle exec rails s'
alias rc='bundle exec rails c'

alias s='sudo'
alias sa='sudo apt-get'

alias k9='killall -9'

alias cpd='bundle exec cap production deploy'
alias cpc='bundle exec cap production rails:console'
alias cpl='bundle exec cap production logs'
alias csd='bundle exec cap staging deploy'
alias csc='bundle exec cap staging rails:console'
alias csl='bundle exec cap staging logs'
alias be='bundle exec'
alias bul='bundle update --local'
