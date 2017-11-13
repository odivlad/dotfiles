alias l='ls -l'
alias ll='ls -al'
alias ip=ifconfig
export PS1='\u@\h:\w$(__git_ps1 " (%s)") \$ '


# All completions
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
