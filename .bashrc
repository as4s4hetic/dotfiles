#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias e='emacs'
alias clip='VBoxClient --clipboard'
PS1='[\u@\h \W]\$ '
