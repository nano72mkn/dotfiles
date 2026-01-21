-- neo-tree configuration
return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle file tree" },
      { "se", "<cmd>Neotree toggle<cr>", desc = "Toggle file tree (legacy)" },
      { "<leader>o", "<cmd>Neotree reveal<cr>", desc = "Reveal current file" },
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
          filtered_items = {
            visible = false,
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              ".DS_Store",
              ".git",
            },
          },
          follow_current_file = {
            enabled = true,
          },
          use_libuv_file_watcher = true,
        },
        window = {
          width = 35,
          mappings = {
            ["<space>"] = "none",
          },
        },
        default_component_configs = {
          indent = {
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            indent_size = 2,
          },
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "",
          },
          git_status = {
            symbols = {
              added = "✓",
              modified = "",
              deleted = "",
              renamed = "➜",
              untracked = "★",
              ignored = "◌",
              unstaged = "✗",
              staged = "✓",
              conflict = "",
            },
          },
        },
      })
    end,
  },
}
