#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]; then
	if [ -z "$BASH_EXECUTION_STRING" ]; then
		exec fish;
	fi
fi
