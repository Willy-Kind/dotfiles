#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -n $DISPLAY ]] || [[ $(tty) != /dev/tty1 ]]; then
  eval "$(starship init bash)"
fi

eval "$(fzf --bash)"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cls='clear'
alias v='nvim'

export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

export FZF_DEFAULT_OPTS="
  --color=fg:#908caa,bg:-1,hl:#ea9a97
  --color=fg+:#e0def4,bg+:-1,hl+:#ea9a97
  --color=border:#44415a,header:#3e8fb0,gutter:-1
  --color=spinner:#f6c177,info:#9ccfd8
  --color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"


export GPG_TTY=$(tty)
