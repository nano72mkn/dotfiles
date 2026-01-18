#!/bin/bash

# Dotfiles setup script

set -e

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "=== Dotfiles Setup ==="

# Create .config directory if it doesn't exist
if [ ! -d "$CONFIG_DIR" ]; then
    echo "Creating $CONFIG_DIR..."
    mkdir -p "$CONFIG_DIR"
fi

# Backup existing nvim config if exists
if [ -d "$CONFIG_DIR/nvim" ] && [ ! -L "$CONFIG_DIR/nvim" ]; then
    echo "Backing up existing nvim config to $CONFIG_DIR/nvim.bak..."
    mv "$CONFIG_DIR/nvim" "$CONFIG_DIR/nvim.bak"
elif [ -L "$CONFIG_DIR/nvim" ]; then
    echo "Removing existing nvim symlink..."
    rm "$CONFIG_DIR/nvim"
fi

# Create symlink for nvim
echo "Creating symlink for nvim..."
ln -s "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Next steps:"
echo "1. Make sure you have Neovim 0.9+ installed"
echo "   - macOS: brew install neovim"
echo ""
echo "2. Install required dependencies:"
echo "   - brew install ripgrep fd"
echo "   - npm install -g neovim"
echo ""
echo "3. Start Neovim and let lazy.nvim install plugins:"
echo "   - nvim"
echo ""
echo "4. Install LSP servers with Mason:"
echo "   - :Mason"
echo ""
