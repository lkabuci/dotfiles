
# start tmux by default on zsh
[ -z "$TMUX" ] && tmux

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=( 
	sudo
	extract
	git 
	python
	zsh-syntax-highlighting 
	zsh-autosuggestions 
)
source $ZSH/oh-my-zsh.sh

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
alias search="sudo pacman -Ss"
alias update="yay -y && flatpak update"

alias upnote="/home/redone/.Personal/Apps/UpNote.AppImage"

alias open="xdg-open"
alias make="make --no-print-directory"

alias vi="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"

# Paths
export PATH+="/home/redone/.Personal/scripts/:"
export PATH+="/home/redone/.Personal/Apps/:"

# Go Paths
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH

# 42 School
export USER="relkabou"
export MAIL="relkabou@student.1337.ma"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

