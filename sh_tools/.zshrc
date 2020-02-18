alias sp="sudo pacman"
alias dmitry="ssh dmitry@192.168.1.56"

alias vim="nvim"
alias vrc="$EDITOR ~/.vimrc"

autoload -U colors && colors

setopt AUTO_CD

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.config/zsh/histfile

bindkey -v
bindkey '^R' history-incremental-search-backward

PROMPT="[t450]$ "

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
