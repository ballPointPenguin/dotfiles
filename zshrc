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
export ANSIBLE_HOME="$HOME/src-hub/ansible"
export DATOMIC_PATH="/usr/local/src/datomic"
export GOPATH="$HOME/code/go"
export PHANTOMPATH="$HOME/src-hub/phantomjs"
export WEBSTORM_PATH="$HOME/src/webstorm"

export PATH="$PATH:$HOME/.local/bin"
export PATH="./.cabal-sandbox/bin:$HOME/.cabal/bin:$PATH"
export PATH="$WEBSTORM_PATH/bin:$PHANTOMPATH/bin:$GOPATH/bin:$DATOMIC_PATH/bin:$ANSIBLE_HOME/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export ARCHFLAGS="-arch x86_64"
export EDITOR='vim'
export LANG=en_US.UTF-8
export SSH_KEY_PATH="~/.ssh/bpp/rsa_id"

export NVM_DIR="$HOME/src-hub/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# python virtualenv stuff:
if test -x /usr/bin/virtualenvwrapper.sh ; then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/code/python
  export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
  source /usr/bin/virtualenvwrapper.sh
fi

source $ZSH/oh-my-zsh.sh

#if test -f $HOME/.Xmodmap ; then
  #xmodmap $HOME/.Xmodmap
#fi

# Colored file listings
# script lifted from 'openSUSE Linux Unleased', by Michael McCallister, 2008, Sams Publishing
# dir_colors file cloned from https://github.com/seebi/dircoors-solarized.git
#
if test -x /usr/bin/dircolors ; then
  export DIR_COLORS="$HOME/src-hub/dircolors-solarized/dircolors.ansi-light"

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

alias bom='rm -rf bower_components && bower cache clean && bower i'
alias emacs='emacsclient -t'
alias emacsc='emacsclient -c'
alias emacsd='emacs --daemon'
alias emacsnw='emacs -nw'
alias gloh="git log --oneline --decorate --color | head"
alias lh='ls -1d .??*'
alias next='git-crawl master'
alias nom='rm -rf node_modules && npm cache clean && npm i'
alias nombom='nom && bom'
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ssh='TERM=xterm ssh'
alias zomg='git add . && git stash && git stash drop'
alias zshconfig="vim ~/.zshrc"

# personal aliases
alias cupery='cd $HOME/dev/cupery-group'
