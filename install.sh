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

########
# TMUX #
########

mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$HOME/.config/tmux"
ln -sf "$DOTFILES/tmux/tmux.reset.conf" "$HOME/.config/tmux"
rm -rf "$HOME/.config/tmux/scripts"
ln -sf "$DOTFILES/tmux/scripts" "$HOME/.config/tmux"
rm -rf "$HOME/.config/tmux/plugins"

# Check if tpm is installed
if [ ! -d "$TPM_PATH" ]; then
    echo "Tmux Plugin Manager (tpm) not found, installing.. $HOME"
    git clone https://github.com/tmux-plugins/tpm
    mv ~/.tmux/plugins "$XDG_CONFIG_HOME/tmux/"
    rm -rf ~/.tmux
else
    echo "Tmux Plugin Manager (tpm) is already installed."
fi


