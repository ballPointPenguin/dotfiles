export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export LANG=en_US.UTF-8
export ORACLE_BASE=/oracle
export ORACLE_HOME=/oracle/product/db
export ORACLE_INVENTORY=/oracle/inventory
export ORACLE_SID=gddb
export LD_LIBRARY_PATH=$ORACLE_HOME/lib
export NLS_LANG='american_america.AL32UTF8'
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
export PATH=$ORACLE_HOME/bin:$PATH:$HOME/.rvm/bin:/usr/local/mule/bin

# If not running interactively, do nothing, else exec tmux
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

test -s ~/.alias && . ~/.alias || true
alias ls="ls -h --color=auto"
alias bashconfig="vim ~/.bashrc"

if test -x /usr/bin/dircolors ; then
  #
  # set up the color-ls environment variables:
  #
  if test -f $HOME/.dir_colors ; then
    eval `dircolors -b $HOME/.dir_colors`
  elif test -f /etc/DIR_COLORS ; then
    eval `dircolors -b /etc/DIR_COLORS`
  fi
fi
