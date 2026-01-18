-- Gitsigns configuration (replacing vim-gitgutter)
return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
          untracked = { text = "┆" },
        },
        signcolumn = true,
        numhl = false,
        linehl = false,
        word_diff = false,
        watch_gitdir = {
          interval = 1000,
          follow_files = true,
        },
        attach_to_untracked = true,
        current_line_blame = false,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = "eol",
          delay = 1000,
        },
        current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil,
        max_file_length = 40000,
        preview_config = {
          border = "rounded",
          style = "minimal",
          relative = "cursor",
          row = 0,
          col = 1,
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local opts = { buffer = bufnr }

          -- Navigation
          vim.keymap.set("n", "]g", function()
            if vim.wo.diff then
              return "]g"
            end
            vim.schedule(function()
              gs.next_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, buffer = bufnr })

          vim.keymap.set("n", "[g", function()
            if vim.wo.diff then
              return "[g"
            end
            vim.schedule(function()
              gs.prev_hunk()
            end)
            return "<Ignore>"
          end, { expr = true, buffer = bufnr })

          -- Actions
          vim.keymap.set("n", "<leader>gb", gs.blame_line, opts)
          vim.keymap.set("n", "<leader>gB", function()
            gs.blame_line({ full = true })
          end, opts)
          vim.keymap.set("n", "<leader>gp", gs.preview_hunk, opts)
          vim.keymap.set("n", "<leader>gr", gs.reset_hunk, opts)
          vim.keymap.set("n", "<leader>gR", gs.reset_buffer, opts)
          vim.keymap.set("n", "<leader>gs", gs.stage_hunk, opts)
          vim.keymap.set("n", "<leader>gS", gs.stage_buffer, opts)
          vim.keymap.set("n", "<leader>gu", gs.undo_stage_hunk, opts)
          vim.keymap.set("n", "<leader>gd", gs.diffthis, opts)
        end,
      })
    end,
  },
}
