# read existing bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# set readline mode to vi instead of emacs
set -o vi
export EDITOR=vim

#
# aliases
#
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gpom="git pull origin master"
