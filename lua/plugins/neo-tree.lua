return {
  "nvim-tree/nvim-tree.lua",
  enabled = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },

      filters = {
        dotfiles = false, -- afficher les fichiers cachés
        custom = { "node_modules", ".git" },
      },
    })
  end,
}
