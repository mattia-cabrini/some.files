# ~/.zsh_env contains user defined environment variables and other exports,
# if the file exists, it is included in ~/.zshrc
# Since these variables could be used in the ~/.zshrc, this statement is placed
# before any other instruction.
if [ -f ~/.zsh_env ]; then
    . ~/.zsh_env
fi

# To avoid duplicate lines in bash History
HISTCONTROL=ignoreboth

# History size
HISTSIZE=1000
HISTFILESIZE=2000

PROMPT=[%*] %n@%M:%~$ 

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# ~/.zsh_aliases is supposed to contain other aliases
# in order for the user to not edid ~/.zshrc.
# The following statement checks if this file exists,
# in which case, it is included in the ~./bashrc
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

eval clear
eval neofetch
