# ~/.bash_env contains user defined environment variables and other exports,
# if the file exists, it is included in ~/.bashrc
# Since these variables could be used in the ~/.bashrc, this statement is placed
# before any other instruction.
if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

# To avoid duplicate lines in bash History
HISTCONTROL=ignoreboth

# History size
HISTSIZE=1000
HISTFILESIZE=2000

# Using color promt
# if [[ ${EUID} == 0 ]] ; then
#     PS1='\[\033[48;2;221;75;57;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;221;75;57m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
# else
#     PS1='\[\033[48;2;105;121;16;38;2;255;255;255m\] \$ \[\033[48;2;0;135;175;38;2;105;121;16m\]\[\033[48;2;0;135;175;38;2;255;255;255m\] \u@\h \[\033[48;2;83;85;85;38;2;0;135;175m\]\[\033[48;2;83;85;85;38;2;255;255;255m\] \w \[\033[49;38;2;83;85;85m\]\[\033[00m\] '
# fi

export PS1="\[\033[m\][\[\033[1;35m\]\t\[\033[m\]] \[\e[2m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\]\W\[\e[0m\]\[\e[2m\]\$ \[\e[0m\]"

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

uniq2()
{
	while read row
	do
		L=${#v[@]}
		
		i=0
		f=0
		while [ $i -lt $L ]
		do
			if [ "$row" == ${v[$i]} ]
			then
				f=1
			fi
			
			let i=$i+1
		done
		
		if [ $f -eq 0 ]
		then
			echo $row
			v[$L]=$row
		fi		
	done
}

# ~/.bash_aliases is supposed to contain other aliases
# in order for the user to not edid ~/.bashrc.
# The following statement checks if this file exists,
# in which case, it is included in the ~./bashrc
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# CD
push_up()
{
	up_history[${#up_history[@]}]=$(pwd)

	lines=$(up | sort -k 1 -t " " -n -r | cut -d " " -f 2-50 | uniq2)
	i=$(up | sort -k 1 -t " " -n -r | cut -d " " -f 2-50 | uniq2 | wc -l | tr " \t\n" "\0\0\0")	

	unset up_history

	for row in $lines
	do
		let i=$i-1
		up_history[$i]=$row
		echo $row
	done
}

pop_up()
{
	let L=${#up_history[@]}-1
	POP_UP=${up_history[$L]}
}

up()
{
	let L=${#up_history[@]}
	i=0
	
	if [ -z $1 ]	
	then
		while [ $i -lt $L ]
		do
			echo $i ${up_history[$i]}
			let i=$i+1
		done
	else
		cd ${up_history[$1]}
	fi
}

eval push_up
eval push_up

alias ::="pop_up && push_up && cd \$POP_UP"
alias ..="push_up && cd .."
alias ...="push_up && cd ../.."
alias cd="push_up && cd"

eval clear
eval neofetch
