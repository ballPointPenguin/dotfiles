# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Themes with RVM integration:
#ZSH_THEME="3den"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="amuse"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="avit"
#ZSH_THEME="bira"
#ZSH_THEME="crunch"
#ZSH_THEME="dallas"
#ZSH_THEME="eastwood"
#ZSH_THEME="fino-time"
#ZSH_THEME="frontcube"
#ZSH_THEME="gallois"
#ZSH_THEME="gnzh"
#ZSH_THEME="half-life"
ZSH_THEME="itchy"
#ZSH_THEME="jaischeema"
#ZSH_THEME="jonathan"
#ZSH_THEME="josh"
#ZSH_THEME="macovsky-ruby"
#ZSH_THEME="macovsky"
#ZSH_THEME="murilasso"
#ZSH_THEME="nebirhos"
#ZSH_THEME="peepcode"
#ZSH_THEME="simonoff"
#ZSH_THEME="Soliah"
#ZSH_THEME="superjarin"
#ZSH_THEME="suvash"
#ZSH_THEME="wedisagree"
#ZSH_THEME="wuffers"

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
export PGDATA=/var/lib/pgsql/data

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin:$HOME/.rvm/bin:$HOME/local/bin:$HOME/adt/sdk/platform-tools

# If not running interactively, do not do anything, else exec tmux
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
#alias ls="ls -h --color=auto"
alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pglog='tail -f /usr/local/var/postgres/server.log'
alias blah='cd ~/dev/blah'
alias npo='cd ~/dev/npomatters'
alias next='git crawl master'
#alias guard='guard --no-bundler-warning'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

#source $HOME/.twilio
#source $HOME/.ngrok.conf

# Colored file listings
# script lifted from 'openSUSE Linux Unleased', by Michael McCallister, 2008, Sams Publishing
# dir_colors file cloned from https://github.com/seebi/dircoors-solarized.git
#
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

# powerline support
#. /usr/share/zsh/site-contrib/powerline.zsh

# suggested by homebrew
#unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles
