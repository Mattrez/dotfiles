#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

set -o vi # vi mode

alias ls='ls --color=auto'
alias grep='rg'
alias mv='mv -iv'
alias cp='cp -iv'

alias open="xdg-open"
alias sp="sudo pacman"
alias nv="nvim"
alias snv="sudo nvim"

alias gs="git status"
