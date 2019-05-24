#
# git
#
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gpom="git pull origin master"
alias gs="git status"
alias gc="git commit -m"
alias ga="git add"


#
# docker
#
alias dps="docker ps"
alias drm="docker rm"
alias drmi="docker rmi"
alias dk="docker kill"

function dka() {
    echo "killing docker processes..."
    for id in `docker ps --format "{{.ID}}"`; do
        docker kill $id
    done
}
