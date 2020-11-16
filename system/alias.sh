#!/bin/bash

# Catch my own mistakes
alias c=clear
alias cl=clear
alias cle=clear
alias clea=clear
alias clera=clear
alias cler=clear
alias cla=clear

# Finder
alias tf="open ./"

ds:trash(){
    find . -name ".DS_Store" -print -delete
}

ds:find(){
    find . -name ".DS_Store" -print
}

# PHP
alias composer="php -d memory_limit=-1 /usr/local/bin/composer"
alias phpunit="clear && ./vendor/bin/phpunit"

# Docker
alias dc="docker-compose"

docker-deamon(){
    if [[ $1 == "start" ]]; then
        open --hide --background -a Docker
    elif [[ $1 == "stop" ]]; then
        osascript -e 'quit app "Docker"'
    else
        echo "usage:\ndocker-deamon start: start the Docker application\ndocker-deamon stop: stop the Docker application"
    fi
}

# Git
g:push(){
    changed=0
    git remote update && git status -uno | grep -q 'Your branch is behind' && changed=1
    if [ $changed = 1 ]; then
        echo "Your branch is behind on remote";
    else
        git add .
        git commit -m $1
        git push
    fi
}

g:fix(){
    git add .
    git commit -m '🐞 quick bugfix'
    git push
}
