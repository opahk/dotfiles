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

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

# aliases
#
alias bi='bundle install --binstubs ./bin'
alias bu='bundle update && bi'

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gco='git checkout'
alias gd='git diff'
alias gm='git merge'
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
alias rs='rspec spec'

alias rss='rails s'
alias rc='rails c'

alias s='sudo'
alias sa='sudo apt-get'

alias k9='killall -9'

alias cpd='cap production deploy'
alias cpc='cap production rails:console'
alias cpl='cap production logs'
alias csd='cap staging deploy'
alias csc='cap staging rails:console'
alias csl='cap production logs'

# Path settings
#
export PATH=./bin:/home/opahk/bin:/home/opahk/code/boost/bin:$PATH
# Heroku
export PATH="/usr/local/heroku/bin:$PATH"
# Add RVM to PATH for scripting
PATH=$PATH:/usr/local/rvm/bin

# ruby tuning
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000
