#!/bin/bash
# General Defaults
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias rf='rm -rf'
alias ni='touch'

# General Utilities
alias rr='source ~/.deb_aliases && clear'
alias c='clear'
alias q='exit'
alias nv='nvim'
alias e='nvim'
alias v='vim'
alias h='history'
alias d='date'
alias t='time'
alias cl='clear; ls'

# Repo Package Management - APT
nl() {    #tag-DebianBased
  case "$1" in    #tag-DebianBased
    i) shift; sudo nala install "$@" ;;    #tag-DebianBased
    r) shift; sudo nala remove "$@" && sudo nala autoremove ;;    #tag-DebianBased
    p) shift; sudo nala purge "$@" && sudo nala autoremove ;;    #tag-DebianBased
    up) sudo nala update -y && sudo nala upgrade -y ;;    #tag-DebianBased
    li) nala list --installed ;;    #tag-DebianBased
    sw) shift; nala show "$@" ;;    #tag-DebianBased
    s) shift; nala search "$@" ;;    #tag-DebianBased
    *) command nala "$@" ;;    #tag-DebianBased
  esac    #tag-DebianBased
}    #tag-DebianBased
dnf() {    #tag-FedoraBased
  case "$1" in    #tag-FedoraBased
    i)   shift; sudo dnf install "$@" ;;    #tag-FedoraBased
    up)  sudo dnf upgrade --refresh -y ;;    #tag-FedoraBased
    r)   shift; sudo dnf remove "$@" ;;    #tag-FedoraBased
    li)  dnf list installed ;;    #tag-FedoraBased
    s)   shift; dnf search "$@" ;;    #tag-FedoraBased
    p)   shift; dnf provides "$@" ;;    #tag-FedoraBased
    ar)  sudo dnf autoremove ;;    #tag-FedoraBased
    cl)  sudo dnf clean all ;;    #tag-FedoraBased
    h)   dnf history ;;    #tag-FedoraBased
    *)   command dnf "$@" ;;    #tag-FedoraBased
  esac    #tag-FedoraBased
}   #tag-FedoraBased


# Local Package Management - DPKG
dbp() {    #tag-DebianBased
  cmd="$1"; shift    #tag-FedoraBased
  case "$cmd" in    #tag-FedoraBased
    i) sudo dpkg -i "$@" ;;    #tag-DebianBased
    r) sudo dpkg -r "$@" ;;    #tag-DebianBased
    p) sudo dpkg -P "$@" ;;    #tag-DebianBased
    li) dpkg -l ;;    #tag-DebianBased
    sw) dpkg -s "$@" ;;    #tag-DebianBased
    *) sudo dpkg "$cmd" "$@" ;;   #tag-DebianBased
  esac    #tag-DebianBased
}    #tag-DebianBased
rpm() {    #tag-FedoraBased
  cmd="$1"; shift    #tag-FedoraBased
  case "$cmd" in    #tag-FedoraBased
    i) sudo rpm -i "$@" ;;    #tag-FedoraBased
    r) sudo rpm -e "$@" ;;    #tag-FedoraBased
    q) rpm -q "$@" ;;         #tag-FedoraBased
    l) rpm -qa ;;                   #tag-FedoraBased
    K) rpm -K "$@" ;;   # check package signature
    *) command rpm "$cmd" "$@";;    #tag-FedoraBased
  esac    #tag-FedoraBased
}    #tag-FedoraBased

# Package Management - Quick Commands
alias i='sudo nala install -y'    #tag-DebianBased
alias r='sudo nala remove -y'    #tag-DebianBased
alias p='sudo nala purge -y'    #tag-DebianBased
alias cln='sudo nala autoremove -y && sudo nala autoclean -y'    #tag-DebianBased
alias udup='sudo nala update -y && sudo nala upgrade -y'    #tag-DebianBased (redundant)
alias up='sudo nala upgrade -y'    #tag-DebianBased (works good)
alias ud='sudo nala update -y'    #tag-DebianBased (updates metadata i guess)
alias li='nala list --installed' #tag-DebianBased
alias i='sudo dnf install'    #tag-FedoraBased
alias li='dnf list installed' #tag-FedoraBased
alias r='sudo dnf remove'    #tag-FedoraBased
alias up='sudo dnf upgrade -y'    #tag-FedoraBased  (fedora doesn't have an upgrade and update like debian)

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
    al) nvim ~/.bash_aliases ;;
    nv) nvim ~/.config/nvim/init.vim ;;
    tmx) nvim ~/.config/tmux/tmux.conf ;;
    *) echo "    Wrong Input    " ;;
  esac
}

# Systemctl Commands
sys() {
  cmd="$1"; shift   
  case "$cmd" in
    str) sudo systemctl start "$@" ;;
    st) sudo systemctl status "$@" ;;
    e) sudo systemctl enable "$@" ;;
    en) sudo systemctl enable --now "$@" ;;
    stp) sudo systemctl stop "$@" ;;
    d) sudo systemctl disable "$@" ;;
    dn) sudo systemctl disable --now "$@" ;;
    *) echo "Unknown sys command: $cmd" ;;
  esac
}

    #tag-PowerOptions
# Power Menu Shortcuts    #tag-PowerOptions
alias sl='sudo systemctl suspend && exit'    #tag-PowerOptions
alias sd='sudo systemctl poweroff'    #tag-PowerOptions
alias rb='sudo systemctl reboot'    #tag-PowerOptions
alias lo='sudo pkill -KILL -u "$USER"'    #tag-PowerOptions
#------------------------------------------------------------------------------ #tag-PowerOptions

# Prompt Aliases---------------------------------------------------------------------------
if [ $USER == "root" ]; then
    PS1="\n \[\e[1;37m\]╭( \[\e[0m\]\[\e[1;31m\]$USER\[\e[0m\]\[\e[1;37m\] ) \[\e[0m\]\n \[\e[1;37m\]╰\[\e[0m\]\[\e[1;37m\]( \[\e[0m\]\[\e[1;31m\]\w\[\e[0m\]\[\e[1;37m\] )\[\e[0m\]\n\n ❯ "
else
    PS1="\n \[\e[1;37m\]╭(\[\e[0m\]\[\e[1;32m\] \t \d \[\e[0m\]\[\e[1;37m\]) \[\e[0m\]\n \[\e[1;37m\]╰\[\e[0m\]\[\e[1;37m\](\[\e[0m\]\[\e[1;32m\] \w \[\e[0m\]\[\e[1;37m\])\[\e[0m\]\n\n ❯ "
fi
#------------------------------------------------------------------------------------------

#------------------------------------------------------------------------------ #tag-SetupScript
# Setup Script    #tag-SetupScript
#------------------------------------------------------------------------------ #tag-SetupScript
# Getting Distro Tags    #tag-SetupScript
if command -v apt >/dev/null 2>&1 || command -v nala >/dev/null 2>&1; then    #tag-SetupScript
    purge_distro="Fedora"    #tag-SetupScript
    sudo dnf install -y curl wget git    #tag-SetupScript
elif command -v dnf >/dev/null 2>&1; then    #tag-SetupScript
    sudo apt install -y nala curl wget git tmux neovim zoxide nala    #tag-SetupScript
    purge_distro="Debian"    #tag-SetupScript
fi    #tag-SetupScript
    #tag-SetupScript
target="#tag-${purge_distro}Based"    #tag-SetupScript
#------------------------------------------------------------------------------ #tag-SetupScript
# Logging 
grep "$target" ~/.bash_aliases > log    #tag-SetupScript
#------------------------------------------------------------------------------ #tag-SetupScript
# Deleting Unrelated Lines    #tag-SetupScript
sed -i "/$target/d" ~/.bash_aliases    #tag-SetupScript
#------------------------------------------------------------------------------ #tag-SetupScript
# Removing VM Commands    #tag-SetupScript
if grep -qi microsoft /proc/ || grep -qi microsoft /proc/sys/kernel/osrelease; then    #tag-SetupScript
      sed -i "/#tag-PowerOptions/d" ~/.bash_aliases    #tag-SetupScript
else    #tag-SetupScript
     sed -i "s/    #tag-PowerOptions//" ~/.bash_aliases    #tag-SetupScript
fi    #tag-SetupScript
#------------------------------------------------------------------------------ #tag-SetupScript
wget -q https://raw.githubusercontent.com/juztasif/cfg/refs/heads/files/nvim/init.vim -O ~/.vimrc || echo -e "\n\tvimrc Setup Failed\n"    #tag-SetupScript
wget -q https://raw.githubusercontent.com/juztasif/cfg/refs/heads/files/shell/.inputrc -O ~/.inputrc || echo -e "\n\tinputrc Setup Failed\n"    #tag-SetupScript
# Sourcing Trimmed Script    #tag-SetupScript
#------------------------------------------------------------------------------ #tag-SetupScript
# Deleting Script Lines    #tag-SetupScript
sed -i "/#tag-SetupScript/d" ~/.bash_aliases    #tag-SetupScript
#------------------------------------------------------------------------------ #tag-SetupScript
echo "source ~/.bash_aliases" >> .bashrc    #tag-SetupScript
source ~/.bash_aliases    #tag-SetupScript
