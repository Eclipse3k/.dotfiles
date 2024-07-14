#!/bin/bash

##########
# Neovim #
##########

rm -rf "$XDG_CONFIG_HOME/nvim"
ln -s "$DOTFILES/nvim" "$HOME/.config"

#######
# ZSH #
#######

mkdir -p "$ZDOTDIR"
ln -sf "$DOTFILES/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/zshrc" "$ZDOTDIR/.zshrc"
ln -sf "$DOTFILES/zsh/aliases" "$ZDOTDIR/aliases"
rm -rf "$ZDOTDIR/external"
ln -sf "$DOTFILES/zsh/external" "$ZDOTDIR"
