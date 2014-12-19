# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# Themes with RVM integration:
#ZSH_THEME="avit"
#ZSH_THEME="crunch"
#ZSH_THEME="dallas"
#ZSH_THEME="fino-time"
#ZSH_THEME="frontcube"
#ZSH_THEME="jaischeema"
#ZSH_THEME="josh"
#ZSH_THEME="macovsky-ruby"
#ZSH_THEME="macovsky"
#ZSH_THEME="nebirhos"
#ZSH_THEME="simonoff"
#ZSH_THEME="Soliah"
#ZSH_THEME="superjarin"
#ZSH_THEME="wedisagree"
# faves:
#ZSH_THEME="3den"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="amuse"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="bira"
#ZSH_THEME="eastwood"
#ZSH_THEME="fino"
ZSH_THEME="gallois"
#ZSH_THEME="gnzh"
#ZSH_THEME="itchy"
#ZSH_THEME="jonathan"
#ZSH_THEME="murilasso"
#ZSH_THEME="peepcode"
#ZSH_THEME="suvash"
#ZSH_THEME="wuffers"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all
# to fix a bug, as described here:
# github.com/robbyrussell/oh-my-zsh/issues/449
unsetopt nomatch

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

# User configuration

#export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin:$HOME/.rvm/bin:$HOME/local/bin:$HOME/adt/sdk/platform-tools

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
#export PGDATA=/var/lib/pgsql/9.3/main
#export JAVA_HOME=/usr/lib64/jvm/java-1.8.0-openjdk-1.8.0
#export ORACLE_HOME=/usr/lib/oracle/11.2/client64
#export TNS_ADMIN=$ORACLE_HOME/lib
#export LD_LIBRARY_PATH=$ORACLE_HOME/lib
#export DYLD_LIBRARY_PATH=$ORACLE_HOME
#export NLS_LANG='american_america.AL32UTF8'
#export REDISCLOUD_URL='redis://rediscloud:mDMOLNYfUbgxpdKy@pub-redis-15413.us-east-1-1.2.ec2.garantiadata.com:15413'
#export PUPPET_PATH="$HOME/govd/puppet/puppet"

export PATH="/home/brosas/bin:/home/brosas/scripts:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games:/usr/lib/mit/bin"

# Use nvm the way god intended:
export NVM_DIR="/home/brosas/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# optional:
#export PATH=$PATH:$ORACLE_HOME/bin:$JAVA_HOME/bin
#export PATH=$PATH:$HOME/src/flow/
# export PATH=$PATH:$HOME/src/adt/sdk/platform-tools:$HOME/src/adt/sdk/tools:$HOME/src/adt/eclipse
# update per ghc version
# export PATH=$PATH:/opt/ghc/7.8.3/bin
# put this last:
export PATH=$HOME/.rvm/bin:$PATH

# If not running interactively, do not do anything, else exec tmux
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
#alias evo='cd ~/govd/brosas/evolution'
#alias over='cd ~/govd/brosas/overlay'
#alias pg='sudo /etc/init.d/postgresql'
#alias pglog='tail -f /var/log/postgresql/postgresql-9.3-main.log'
#alias psql='sudo -i -u postgres psql'
alias postgresql='sudo service postgresql'
#alias pguser='sudo -i -u postgres'
#alias npo='cd /home/brosas/dev/npomatters'
alias gemdir='cd `rvm gemdir`'
alias next='git crawl master'
#alias apache='sudo service apache2'
alias chrome='google-chrome'
alias nom='rm -rf node_modules && npm cache clear && npm i'
#alias tilemill='node /usr/share/tilemill/index.js'
alias ssh='TERM=xterm ssh'
#alias nbr2mp4='/home/brosas/src/nbr2_mp4/nbr2mp4'
#alias es6="node --use-strict $(node --v11-options | grep harm | awk '{print $1}' | xargs)"
alias prye='pry -r ./config/environment'
alias emacs='emacs -nw'

