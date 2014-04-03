# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

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
export PGDATA=/var/lib/pgsql/9.3/main
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export ORACLE_HOME=/usr/lib/oracle/12.1/client64
export TNS_ADMIN=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export NLS_LANG='american_america.AL32UTF8'
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export REDISCLOUD_URL='redis://rediscloud:mDMOLNYfUbgxpdKy@pub-redis-15413.us-east-1-1.2.ec2.garantiadata.com:15413'
export USE_RAILS_3='true'

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/brosas/scripts:/home/brosas/bin
export PATH=$PATH:/home/brosas/.rvm/gems/ruby-2.1.0/bin:/home/brosas/.rvm/gems/ruby-2.1.0@global/bin:/home/brosas/.rvm/rubies/ruby-2.1.0/bin:/home/brosas/.rvm/bin
export PATH=$PATH:$HOME/adt/sdk/platform-tools:$ORACLE_HOME/bin:$JAVA_HOME/bin

# If not running interactively, do not do anything, else exec tmux
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

# aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
#alias ls="ls -h --color=auto"
alias evo='cd ~/govd/evolution'
#alias pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pg='sudo /etc/init.d/postgresql'
alias pglog='tail -f /var/log/postgresql/postgresql-9.3-main.log'
alias npo='cd ~/ember/npomatters'
alias gemdir='cd `rvm gemdir`'
alias next='git crawl master'
alias ack='ack-grep'

# ssh aliases
alias gitlab="ssh brosas@dev-scm.office.gdi"
alias qc-linux1="ssh qc-linux1.office.gdi"
alias donkey="ssh evodeploy@10.10.2.30"
alias qc-mdb1="ssh brosas@qc-mdb1.visi.gdi"
alias qc-mdb2="ssh brosas@qc-mdb2.visi.gdi"
alias qc-ep-mdb1="ssh brosas@qc-mdb1-ep.tops.gdi"
alias qc-ep-mdb2="ssh brosas@qc-mdb2-ep.tops.gdi"
alias qc-mq1="ssh brosas@qc-mq1.visi.gdi"
alias qc-mq2="ssh brosas@qc-mq2.visi.gdi"
alias qc-mq3="ssh brosas@qc-mq3.visi.gdi"
alias qc-evol1="ssh brosas@qc-evoweb11.visi.gdi"
alias qc-evol2="ssh brosas@qc-evoweb12.visi.gdi"
alias qc-ep-evol1="ssh brosas@qc-evoweb1-ep.tops.gdi"
alias qc-ep-evol2="ssh brosas@qc-evoweb2-ep.tops.gdi"
alias qc-pw1="ssh brosas@qc-evobg1.visi.gdi"
alias qc-pw2="ssh brosas@qc-evobg2.visi.gdi"
alias qc-tms1="ssh brosas@qc-tms1.visi.gdi"
alias qc-tms2="ssh brosas@qc-tms2.visi.gdi"
alias qc-tms3="ssh brosas@qc-tms3.visi.gdi"
alias int-evol1="ssh brosas@int-evoweb11.visi.gdi"
alias int-evol2="ssh brosas@int-evoweb12.visi.gdi"
alias int-evol3="ssh brosas@int-evoweb13.visi.gdi"
alias int-evol4="ssh brosas@int-evoweb14.visi.gdi"
alias int-ep-evol1="ssh brosas@int-evoweb1-ep.tops.gdi"
alias int-ep-evol2="ssh brosas@int-evoweb2-ep.tops.gdi"
alias int-ep-evol3="ssh brosas@int-evoweb3-ep.tops.gdi"
alias int-ep-evol4="ssh brosas@int-evoweb4-ep.tops.gdi"
alias prod-ep-evol5="ssh brosas@prod-evoweb5-ep.tops.gdi"
alias stg-ep-evol5="ssh brosas@stg-evoweb5-ep.tops.gdi"
alias stg-ep-xact1="ssh brosas@stg-xact1-ep.tops.gdi"
alias prod-ep-xact1="ssh brosas@prod-xact1-ep.tops.gdi"
alias int-mdb1="ssh brosas@int-mdb1.visi.gdi"
alias int-mdb2="ssh brosas@int-mdb2.visi.gdi"
alias int-pw1="ssh brosas@int-evobg1.visi.gdi"
alias int-pw2="ssh brosas@int-evobg2.visi.gdi"
alias int-pw3="ssh brosas@int-evobg3.visi.gdi"
alias int-pw4="ssh brosas@int-evobg4.visi.gdi"
alias stg-tsms1="ssh brosas@stg-tsms1.visi.gdi"
alias stg-tsms2="ssh brosas@stg-tsms2.visi.gdi"
alias buildbox="ssh buildbox.office.gdi"
alias buildbox1="ssh it-buildbox1.office.gdi"
alias it-buildbox="ssh it-buildbox1.office.gdi"
alias int-evohm1="ssh tomcat5@int-evohm1.visi.gdi"

# PS1 settings from default Ubuntu 14.04 .bashrc
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
# to fix a bug, as described here:
# github.com/robbyrussell/oh-my-zsh/issues/449
unsetopt nomatch

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

# maybe this will help
#__rvm_project_rvmrc

# vim mode
# set -o vt
HELPDIR=/usr/local/share/zsh/helpfiles
