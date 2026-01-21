-- Basic Neovim options
local opt = vim.opt

-- Ensure PATH includes nodenv, aqua, and mise shims for LSP tools
local home = vim.env.HOME
local path_additions = {
  home .. "/.nodenv/shims",
  home .. "/.local/share/aquaproj-aqua/bin",
  home .. "/.local/share/mise/shims",
  "/opt/homebrew/bin",
}
vim.env.PATH = table.concat(path_additions, ":") .. ":" .. vim.env.PATH

-- Encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Line wrapping
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Cursor
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard (use system clipboard)
opt.clipboard = "unnamedplus"

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Consider - as part of word
opt.iskeyword:append("-")

-- Disable swapfile
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undodir"

-- Faster completion
opt.updatetime = 250
opt.timeoutlen = 300

-- Scroll offset
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Show invisible characters
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Mouse
opt.mouse = "a"

-- Command line height
opt.cmdheight = 1

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Disable netrw (we use nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
