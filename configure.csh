#!/bin/bash

#
# script to configure a new cloud instance
#

#
# variables
#
repos="contractdesign/dotfiles contractdesign/code-examples maebert/jrnl"
tools="stow python3 jq httpie tmux golang"


# install tools
for t in ${tools}
do
    sudo apt install -y ${t}
done

# clone repositories
pushd ~/
for r in ${repos}
do
    git clone https://github.com/$r
done

# install dotfiles
pushd ~/dotfiles
stow -t ${HOME} vim bash sqlite tmux gdb
