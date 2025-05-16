#!/bin/bash
# Fedora-specific Bash Aliases (.fed_aliases.sh)

# General Defaults
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias rf='rm -rf'
alias ni='touch'

# General Utilities
alias rr='source ~/.arch_aliases.sh && clear'
alias c='clear'
alias q='exit'
alias nv='nvim'
alias e='nvim'
alias v='vim'
alias h='history'
alias d='date'
alias t='time'
alias cl='clear; ls'

# Package Management - DNF
dnf() {
  case "$1" in
    i) shift; sudo dnf install "$@" ;;
    up) sudo dnf update && sudo dnf upgrade -y ;;
    r) shift; sudo dnf remove "$@" ;;
    li) dnf list installed ;;
    sw) shift; dnf info "$@" ;;
    *) echo "Unknown dnf command: $1" ;;
  esac
}

# Package Management - RPM
rpm() {
  case "$1" in
    i) shift; sudo rpm -i "$@" ;;
    u) shift; sudo rpm -U "$@" ;;
    r) shift; sudo rpm -e "$@" ;;
    li) rpm -qa ;;
    sw) shift; rpm -qi "$@" ;;
    *) echo "Unknown rpm command: $1" ;;
  esac
}

# Package Management - Quick Commands
alias i='dnf i -y'
alias r='dnf r -y'
alias rc='sudo dnf autoremove -y && sudo dnf clean all'
alias up='dnf up -y'

# Navigation
alias home='cd ~'
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias dn='cd ~/Downloads'
alias dc='cd ~/Documents'
alias pc='cd ~/Pictures'
alias dk='cd ~/Desktop'

# File Editing with Case Statement
ec() {
  case "$1" in
    rc) nvim ~/.zshrc ;;
    al) nvim ~/.fed_aliases.sh ;;
    nv) nvim ~/.config/nvim/init.lua ;;
    tmx) nvim ~/.config/tmux/tmux.conf ;;
    *) echo "    Wrong Input    " ;;
  esac
}

# System Control with Case Statement
sys() {
  case "$1" in
    sl) systemctl suspend && exit ;;
    sd) systemctl poweroff ;;
    rb) systemctl reboot ;;
    lo) pkill -KILL -u "$USER" ;;
    *) echo "Unknown sys command: $1" ;;
  esac
}

