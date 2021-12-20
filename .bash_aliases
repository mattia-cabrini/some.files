alias cp="cp -i"
alias df='df -h'
alias free='free -m'
alias more=less
alias please="sudo"
alias ..="cd .."
alias git.s="git status"
alias git.p="git push"
alias git.c="git commit"
alias git.m="git commit -m"
alias git.d="git diff"
alias :q="exit"
alias hh="homebank"
alias spellen="aspell -l en check"
alias spellit="aspell -l it check"
alias mutt="~/.config/neomutt/mutt-boot.sh"

# Old 
# alias ls="ls --group-directories-first"
# alias la="ls --group-directories-first -a"

# Thanks to DistroTube <https://gitlab.com/dwt1/dotfiles/>
# Changing "ls" to "exa"; Edited
alias ls='exa -l --color=always --group-directories-first' # my preferred listing
alias la='exa -al --color=always --group-directories-first'  # all files and dirs
alias ll='exa --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

