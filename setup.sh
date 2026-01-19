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
# mise
# ---------------------
echo ""
echo "[mise] Setting up..."

mkdir -p "$CONFIG_DIR/mise"
if [ -f "$CONFIG_DIR/mise/config.toml" ] && [ ! -L "$CONFIG_DIR/mise/config.toml" ]; then
    mv "$CONFIG_DIR/mise/config.toml" "$CONFIG_DIR/mise/config.toml.bak"
    echo "  Backed up existing config"
elif [ -L "$CONFIG_DIR/mise/config.toml" ]; then
    rm "$CONFIG_DIR/mise/config.toml"
fi
ln -s "$DOTFILES_DIR/mise/config.toml" "$CONFIG_DIR/mise/config.toml"
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
# GitHub CLI (credential helper)
# ---------------------
echo ""
echo "[gh] Setting up git credential..."

if command -v gh &> /dev/null; then
    # Write credential config to local file (not tracked by dotfiles)
    gh auth setup-git --hostname github.com
    # Move credential config to .gitconfig.local
    if grep -q "credential" "$HOME/.gitconfig" 2>/dev/null; then
        grep -A2 '\[credential' "$HOME/.gitconfig" >> "$HOME/.gitconfig.local"
        # Remove credential section from main gitconfig
        sed -i '' '/\[credential/,/helper = /d' "$HOME/.gitconfig"
    fi
    echo "  Git credential configured in ~/.gitconfig.local"
else
    echo "  gh not found, skipping"
fi

# ---------------------
# Done
# ---------------------
echo ""
echo "=== Setup Complete ==="
echo ""
echo "Next steps:"
echo "  1. brew bundle --file=~/dotfiles/Brewfile"
echo "  2. mise install"
echo "  3. gh auth login  (if not logged in)"
echo "  4. source ~/.zshrc"
echo ""
