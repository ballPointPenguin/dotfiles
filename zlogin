[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export LANG=en_US.UTF-8
export ORACLE_BASE=/oracle
export ORACLE_HOME=/oracle/product/db
export ORACLE_INVENTORY=/oracle/inventory
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
export PS1='\[\033[01;32m\]\u@\h \[\033[00;31m\]\W \$ \[\033[00m\]'
export PATH=$ORACLE_HOME/bin:$PATH:$HOME/script:$HOME/bin:$HOME/.rvm/bin

#export PGDATA=/var/lib/pgsql/data