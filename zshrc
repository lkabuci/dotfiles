# start tmux by default on zsh
if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [ "$TERM" = "alacritty" ]; then
    tmux attach -t default || tmux new -s default
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

function man {
  # Attempt to get the TLDR page for the given command
  tldr_page=$(tldr "$1" 2>/dev/null)

  if [[ -n "$tldr_page" ]]; then
    # If a TLDR page was found, display it
	command tldr "$1"
  else
    # Otherwise, call the original `man` command
    command man "$1"
  fi
}

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=( 
	sudo
	extract
	git 
	vi-mode
	python
	zsh-syntax-highlighting 
	zsh-autosuggestions 
)
source $ZSH/oh-my-zsh.sh

alias cat="bat --plain --wrap=character"
alias ls='clear && lsd'
alias sl=ls
alias ks=ls
alias lss=ls
alias tree="ls --tree"

alias celar=clear
alias ckear=clear
alias vlear=clear
alias clekar=clear
alias lcear=clear
alias cleaer=clear
alias claer=clear
alias cealr=clear
alias cear=clear
alias celaer=clear
alias cekar=clear
alias caelr=clear

alias xxx="nvim ~/.zshrc"
alias sss="source ~/.zshrc"

alias dea='deactivate'
alias vi='nvim'
alias pt=poetry

alias zzz="systemctl suspend"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rnscu"
alias update="flatpak update ; yay"

alias upnote="/home/redone/.Personal/Apps/UpNote.AppImage"

alias open="xdg-open"
alias make="make --no-print-directory"

alias vi="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"

# Paths
export PATH=$HOME/.Personal/scripts/:$PATH
export PATH=$HOME/.Personal/Apps/:$PATH

# Go Paths
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH

# 42 School
export USER="relkabou"
export MAIL="relkabou@student.1337.ma"

# Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export JAVA_HOME="/usr/lib/jvm/java-<version>-openjdk/"
export CLION_JDK=$JAVA_HOME

export TERMINAL=alacritty
export PATH=$HOME/.local/bin/:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

