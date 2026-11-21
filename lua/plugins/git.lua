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
    },
    opts = {
      kind = "tab",
      integrations = {
        diffview = true,
        snacks = true,
      },
    },
  },

  -- Diffview : diffs, historique et résolution de conflits
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewToggleFiles", "DiffviewRefresh" },
    keys = {
      { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diffview (changements / conflits)" },
      { "<leader>gV", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
      { "<leader>gF", "<cmd>DiffviewFileHistory %<cr>", desc = "Historique du fichier" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Historique de la branche" },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        -- Pendant un merge/rebase : OURS | BASE | THEIRS en haut, résultat en bas
        merge_tool = {
          layout = "diff3_mixed",
          disable_diagnostics = true,
          winbar_info = true,
        },
      },
      -- Raccourcis par défaut dans la vue de conflit :
      --   [x / ]x            conflit précédent / suivant
      --   <leader>co / ct    garder OURS / THEIRS
      --   <leader>cb / ca    garder BASE / tout garder
      --   dx                 supprimer le conflit
      --   g<C-x>             changer de layout
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
