#!/bin/bash

##########
# Neovim #
##########

rm -rf "$HOME/.config/nvim"
ln -s "$HOME/.dotfiles/nvim" "$HOME/.config"
