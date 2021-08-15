alias l='ls -l'
alias ll='ls -al'
[ "$(type -t __git_ps1)" == 'function' ] && git_ps1=$(__git_ps1 " (%s)")
export PS1='\u@\h:\w${git_ps1} \$ '


# All completions
command -v brew >/dev/null
if [ $? -eq 0 ]; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi
