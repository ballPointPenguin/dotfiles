export EDITOR=/usr/bin/vim

test -s ~/.alias && . ~/.alias || true

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export LANG=en_US.UTF-8

alias ls="ls -h --color=auto"

export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
