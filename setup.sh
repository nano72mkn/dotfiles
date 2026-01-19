#!/bin/bash

# Dotfiles setup script

set -e

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "=== Dotfiles Setup ==="

# Create .config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# ---------------------
# Neovim
# ---------------------
echo ""
echo "[nvim] Setting up..."

if [ -d "$CONFIG_DIR/nvim" ] && [ ! -L "$CONFIG_DIR/nvim" ]; then
    mv "$CONFIG_DIR/nvim" "$CONFIG_DIR/nvim.bak"
    echo "  Backed up existing config"
elif [ -L "$CONFIG_DIR/nvim" ]; then
    rm "$CONFIG_DIR/nvim"
fi
ln -s "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"
echo "  Symlink created"

# ---------------------
# Starship
# ---------------------
echo ""
echo "[starship] Setting up..."

if [ -f "$CONFIG_DIR/starship.toml" ] && [ ! -L "$CONFIG_DIR/starship.toml" ]; then
    mv "$CONFIG_DIR/starship.toml" "$CONFIG_DIR/starship.toml.bak"
    echo "  Backed up existing config"
elif [ -L "$CONFIG_DIR/starship.toml" ]; then
    rm "$CONFIG_DIR/starship.toml"
fi
ln -s "$DOTFILES_DIR/starship/starship.toml" "$CONFIG_DIR/starship.toml"
echo "  Symlink created"

# ---------------------
# Lazygit
# ---------------------
echo ""
echo "[lazygit] Setting up..."

mkdir -p "$CONFIG_DIR/lazygit"
if [ -f "$CONFIG_DIR/lazygit/config.yml" ] && [ ! -L "$CONFIG_DIR/lazygit/config.yml" ]; then
    mv "$CONFIG_DIR/lazygit/config.yml" "$CONFIG_DIR/lazygit/config.yml.bak"
    echo "  Backed up existing config"
elif [ -L "$CONFIG_DIR/lazygit/config.yml" ]; then
    rm "$CONFIG_DIR/lazygit/config.yml"
fi
ln -s "$DOTFILES_DIR/lazygit/config.yml" "$CONFIG_DIR/lazygit/config.yml"
echo "  Symlink created"

# ---------------------
# Git
# ---------------------
echo ""
echo "[git] Setting up..."

if [ -f "$HOME/.gitconfig" ] && [ ! -L "$HOME/.gitconfig" ]; then
    mv "$HOME/.gitconfig" "$HOME/.gitconfig.bak"
    echo "  Backed up existing .gitconfig"
elif [ -L "$HOME/.gitconfig" ]; then
    rm "$HOME/.gitconfig"
fi
ln -s "$DOTFILES_DIR/git/gitconfig" "$HOME/.gitconfig"
echo "  Symlink created"

# ---------------------
# Zsh
# ---------------------
echo ""
echo "[zsh] Setting up..."

if [ -f "$HOME/.zshrc" ] && [ ! -L "$HOME/.zshrc" ]; then
    mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
    echo "  Backed up existing .zshrc"
elif [ -L "$HOME/.zshrc" ]; then
    rm "$HOME/.zshrc"
fi
ln -s "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
echo "  Symlink created"

# ---------------------
# Done
# ---------------------
echo ""
echo "=== Setup Complete ==="
echo ""
echo "Install tools with Homebrew:"
echo ""
echo "  brew install neovim ripgrep fd"
echo "  brew install starship zoxide fzf lazygit"
echo "  brew install eza bat delta"
echo ""
echo "Then restart your terminal or run:"
echo "  source ~/.zshrc"
echo ""
