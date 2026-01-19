# dotfiles

macOS development environment configuration.

## Contents

| Directory | Description |
|-----------|-------------|
| `nvim/` | Neovim config (Lua, lazy.nvim) |
| `git/` | gitconfig with delta |
| `zsh/` | zshrc |
| `starship/` | Prompt config |
| `lazygit/` | Lazygit config |
| `Brewfile` | Homebrew packages |

## Setup

```bash
# 1. Clone
git clone https://github.com/nano72mkn/dotfiles.git ~/dotfiles

# 2. Install Homebrew packages
brew bundle --file=~/dotfiles/Brewfile

# 3. Create symlinks
~/dotfiles/setup.sh

# 4. Restart terminal
```

## Tools

| Tool | Description |
|------|-------------|
| neovim | Editor |
| starship | Prompt |
| zoxide | Smart cd (`z`) |
| fzf | Fuzzy finder |
| lazygit | Git TUI (`lg`) |
| eza | Modern ls |
| bat | Modern cat |
| delta | Git diff |
| mise | Version manager |
| ghq | Repository manager |
| gh | GitHub CLI |

## Key bindings

| Key | Action |
|-----|--------|
| `Ctrl+r` | fzf history search |
| `Ctrl+t` | fzf file search |
| `Ctrl+g` | ghq repository jump |
| `z <dir>` | zoxide jump |
| `lg` | lazygit |
| `repos` | ghq + fzf |
