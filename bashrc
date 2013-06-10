test -s ~/.alias && . ~/.alias || true
alias ls="ls -h --color=auto"

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