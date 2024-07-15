#!/bin/bash

mkdir -p "$ZDOTDIR"

ln -sf "$DOTFILES/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$DOTFILES/zsh/zshrc" "$ZDOTDIR/.zshrc"
ln -sf "$DOTFILES/zsh/aliases" "$ZDOTDIR/aliases"
ln -sf "$DOTFILES/zsh/scripts.sh" "$ZDOTDIR/scripts.sh"
rm -rf "$ZDOTDIR/plugins"
ln -sf "$DOTFILES/zsh/plugins" "$ZDOTDIR"

echo "Zsh configurations installed"
