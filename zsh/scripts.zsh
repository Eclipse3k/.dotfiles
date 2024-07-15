#!/bin/bash


# Run script to update apt
updatesys() {
    sh $DOTFILES/update.sh
}

# Compress a file
compress() {
    local DATE="$(date +%Y%m%d-%H%M%S)"
    tar cvzf "$DATE.tar.gz" "$@"
}
