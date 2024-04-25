
if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export PS1='\[[1m\]<\h:\W >\[[m\]'
export RSYNC_RSH='ssh'

# add the current directory to the PATH

PATH=${PATH}:.:/user/browns/bin
# set the umask for user,group, but not other writes
umask 002
export PATH


