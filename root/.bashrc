#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=nvim
export EDITOR="$VISUAL"

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1="\e[31m[\u@\h \W]# "

alias vi='nvim'
alias vim='nvim'
alias sysconfig='/usr/bin/git --git-dir=/root/sysconfig --work-tree=/'
