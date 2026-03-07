return {
  "nvim-tree/nvim-tree.lua",
  enabled = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Pretty file icons (requires Nerd Font)
  },
  lazy = false,
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30, -- Sidebar width in columns
        side = "left", -- Could be "right" if you prefer
      },
      renderer = {
        icons = {
          show = {
            file = true, -- Show file type icons
            folder = true, -- Show folder icons
            folder_arrow = true, -- Show expand/collapse arrows
            git = true, -- Show git status icons
          },
        },
      },
      filters = {
        dotfiles = false, -- Show hidden files by default
        -- Ignore these directories (they clutter the tree)
        custom = { "node_modules", ".git" },
      },
    })
  end,
}
