alias sp="sudo pacman"

alias aghssh="ssh matrado9@149.156.111.10"

alias vim="nvim"
alias vrc="$EDITOR ~/.vimrc"
alias gs="git status"

autoload -U colors && colors

setopt AUTO_CD

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.config/zsh/histfile

bindkey -v
bindkey '^R' history-incremental-search-backward

PROMPT="[%m %2~]%# "

# Functions
function cdf() {
	dir=$(find $HOME -type d | fzf)
	cd $dir
}

function vfzf() {
	file=$(find $HOME -type f | fzf)
	$EDITOR $file
}

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
