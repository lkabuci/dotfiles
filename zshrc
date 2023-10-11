# Start Zellij by default
if command -v zellij &> /dev/null && [ -z "$ZELLIJ" ] && [ "$ALACRITTY_WINDOW_ID" ]; then
    zellij
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
# ZSH_THEME="robbyrussell"
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
        git
        sudo
        python
        extract
        vi-mode
        colored-man-pages
        zsh-autosuggestions
        zsh-syntax-highlighting
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
alias pt=poetry

alias zzz="systemctl suspend"
alias install="sudo aptitude install"
alias remove="sudo aptitude remove"
alias update="flatpak update; sudo aptitude update; sudo aptitude upgrade; sudo aptitude full-upgrade; sudo aptitude autoremove; sudo snap refresh"

alias open="xdg-open"

alias vi="fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim"

alias ":q"="exit"
alias ":wq"="exit"

alias cal="cal -m"
alias bat="bat --plain"

alias lsblk="lsblk | grep -v snap"

alias clip="wl-copy"

export TERMINAL=alacritty
export PATH=$HOME/.local/bin/:$PATH

