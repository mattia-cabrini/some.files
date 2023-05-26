# BASHRC

# Environment variables
if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

# To avoid duplicate lines in bash History
HISTCONTROL=ignoreboth

# History size
HISTSIZE=1000
HISTFILESIZE=2000

# export PS1="\[\033[m\][\[\033[1;35m\]\t\[\033[m\]] \[\e[2m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\]\W\[\e[0m\]\[\e[2m\]\$ \[\e[0m\]"

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar -xvjf $1   ;;
      *.tar.gz)    tar -xvzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar -xvf $1    ;;
      *.tbz2)      tar -xvjf $1   ;;
      *.tgz)       tar -xvzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# User defined aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# --- PS1
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

git_branch_nbsp() {
  local GB=$(git_branch)

  if [ ! -z "$GB" ]; then
    echo "$GB "
  fi
}

PROMPT_COMMAND=__prompt_command
__prompt_command() {
    local EXIT="$?"                # This needs to be first
    PS1=""
    local errCol=""

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'

    if [ $EXIT -gt 0 ]; then
      errCol=$Red
    else
      errCol=$Gre
    fi

    export PS1="$Rcol\d \T"
    export PS1="$PS1 [\l: bash]"
    export PS1="$PS1 $Gre\u@\h:\w$Rcol"
    export PS1="$PS1 ${BBlu}\$(git_branch_nbsp)$RCol"
    
    export PS1="$PS1$errCol{$EXIT}$RCol"
    export PS1="$PS1 \n$errCol\\$\[$(tput sgr0)\]$RCol "
}
# --- END PS1

# Eval neofetch, I like it
eval clear
eval neofetch
