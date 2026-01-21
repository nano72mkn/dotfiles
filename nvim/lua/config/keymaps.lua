-- Keymaps configuration
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- jj to escape (from your old config)
keymap("i", "jj", "<ESC>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows with arrows (from your old config)
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Tab navigation (similar to your old config)
keymap("n", "<leader>tn", ":tabnew<CR>", opts)
keymap("n", "<leader>tc", ":tabclose<CR>", opts)
keymap("n", "<leader>tp", ":tabprevious<CR>", opts)
keymap("n", "<leader>t]", ":tabnext<CR>", opts)

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>bd", ":bdelete<CR>", opts)

-- Clear search highlighting
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)

-- Better indenting (stay in visual mode)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move lines up/down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Keep cursor centered when scrolling
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Paste without yanking in visual mode
keymap("v", "p", '"_dP', opts)

-- Quick save
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- Select all
keymap("n", "<C-a>", "ggVG", opts)

-- Split window
keymap("n", "<leader>sv", ":vsplit<CR>", opts)
keymap("n", "<leader>sh", ":split<CR>", opts)

-- neo-tree
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
keymap("n", "se", ":Neotree toggle<CR>", opts)
keymap("n", "<leader>o", ":Neotree reveal<CR>", opts)

-- Telescope (replacing fzf)
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)

-- LSP keymaps (will be set up in lsp.lua as well)
keymap("n", "gd", vim.lsp.buf.definition, opts)
keymap("n", "gD", vim.lsp.buf.declaration, opts)
keymap("n", "gr", vim.lsp.buf.references, opts)
keymap("n", "gi", vim.lsp.buf.implementation, opts)
keymap("n", "K", vim.lsp.buf.hover, opts)
keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
keymap("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, opts)
keymap("n", "[d", vim.diagnostic.goto_prev, opts)
keymap("n", "]d", vim.diagnostic.goto_next, opts)
keymap("n", "<leader>d", vim.diagnostic.open_float, opts)

-- Git (gitsigns)
keymap("n", "<leader>gb", ":Gitsigns blame_line<CR>", opts)
keymap("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
keymap("n", "]g", ":Gitsigns next_hunk<CR>", opts)
keymap("n", "[g", ":Gitsigns prev_hunk<CR>", opts)
