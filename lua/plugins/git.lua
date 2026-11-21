return {
  -- Interface Git (status, commit, push, rebase, stash…)
  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim", -- vues de diff / historique
    },
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
      { "<leader>gc", "<cmd>Neogit commit<cr>", desc = "Neogit Commit" },
      { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diffview (changements)" },
      { "<leader>gV", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
      { "<leader>gF", "<cmd>DiffviewFileHistory %<cr>", desc = "Historique du fichier" },
    },
    opts = {
      kind = "tab",
      integrations = {
        diffview = true,
        snacks = true,
      },
    },
  },

  -- Blame inline (fourni par gitsigns, déjà inclus dans LazyVim)
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = { delay = 500 },
    },
    keys = {
      { "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle Blame inline" },
    },
  },
}
