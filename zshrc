# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="gallois"

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

# User configuration

# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/.cabal/bin:$PATH"
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export LANG=en_US.UTF-8
export EDITOR="vim"
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/bpp/rsa_id"
export DIR_COLORS="$HOME/src-hub/dircolors-solarized/dircolors.ansi-light"
# python virtualenv stuff:
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/code/python
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source /usr/bin/virtualenvwrapper.sh
#source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

source $ZSH/oh-my-zsh.sh
source $HOME/.nvm/nvm.sh

# Colored file listings
# script lifted from 'openSUSE Linux Unleased', by Michael McCallister, 2008, Sams Publishing
# dir_colors file cloned from https://github.com/seebi/dircoors-solarized.git
if test -x /usr/bin/dircolors ; then
  if test -f $DIR_COLORS ; then
    eval `dircolors -b $DIR_COLORS`
  elif test -f /etc/DIR_COLORS ; then
    eval `dircolors -b /etc/DIR_COLORS`
  fi
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# personal aliases
alias cupery='cd $HOME/dev/cupery-group'
alias emacs='emacs -nw'
alias gemdir='cd `rvm gemdir`'
alias lh='ls -1d .??*'
alias next='git crawl master'
alias nom='rm -rf node_modules && npm cache clear && npm i'
alias ohmyzsh="vim ~/.oh-my-zsh"
alias prye='pry -r ./config/environment'
alias ssh='TERM=xterm ssh'
alias zshconfig="vim ~/.zshrc"

# work aliases
alias evo='cd ~/govd/brosas/evolution'
alias over='cd ~/govd/brosas/overlay'
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
alias qc-ep-evol1="ssh brosas@qc-evoweb1-ep.tops.gdi"
alias qc-ep-evol2="ssh brosas@qc-evoweb2-ep.tops.gdi"
alias qc-pw1="ssh brosas@qc-evobg1.visi.gdi"
alias qc-pw2="ssh brosas@qc-evobg2.visi.gdi"
alias qc-tms1="ssh brosas@qc-tms1.visi.gdi"
alias qc-tms2="ssh brosas@qc-tms2.visi.gdi"
alias qc-tms3="ssh brosas@qc-tms3.visi.gdi"
alias int-ep-evol1="ssh brosas@int-evoweb1-ep.tops.gdi"
alias int-ep-evol2="ssh brosas@int-evoweb2-ep.tops.gdi"
alias int-ep-evol3="ssh brosas@int-evoweb3-ep.tops.gdi"
alias int-ep-evol4="ssh brosas@int-evoweb4-ep.tops.gdi"
alias prod-ep-evol5="ssh brosas@prod-evoweb5-ep.tops.gdi"
alias stg-evol1-ep="ssh brosas@stg-evoweb1-ep.tops.gdi"
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
alias qc-railsweb1="ssh brosas@qc-railsweb1-ep.tops.gdi"
alias int-railsweb1="ssh brosas@int-railsweb1-ep.tops.gdi"
alias stg-railsweb1="ssh brosas@stg-railsweb1-ep.tops.gdi"
alias prod-railsweb1="ssh brosas@prod-railsweb1-ep.tops.gdi"
alias prod-puppet1="ssh brosas@prod-puppet1-ep.tops.gdi"
alias qc-overlay-db="ssh -L 3307:test-mysql1-ep.tops.gdi:3306 qc-railsweb1-ep.tops.gdi -N"
alias prod-overlay-db="ssh -L 3307:prod-mysql3-ep.tops.gdi:3306 prod-railsweb1-ep.tops.gdi -N"
