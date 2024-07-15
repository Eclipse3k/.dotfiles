#!/bin/bash

# Check if the tpm (Tmux Plugin Manager) is installed
if [ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ]; then
    echo "Tmux Plugin Manager (tpm) not found, installing..."
    git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
    "$XDG_CONFIG_HOME/tmux/plugins/tpm/bin/install_plugins"
    echo "Leader + I to install plugins"
fi

# Symlink tmux configuration files
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"
ln -sf "$DOTFILES/tmux/tmux.reset.conf" "$XDG_CONFIG_HOME/tmux/tmux.reset.conf"

# Remove any existing scripts directory and create a symlink to the new scripts directory
rm -rf "$XDG_CONFIG_HOME/tmux/scripts"
ln -sf "$DOTFILES/tmux/scripts" "$XDG_CONFIG_HOME/tmux/scripts"

# Optional: Generate default tmux configuration (uncomment if needed)
# tmux -f /dev/null show-options -s \; show-options -g \; list-keys > "$DOTFILES/tmux/tmux.defaults.conf"

echo "Tmux configuration installed"
