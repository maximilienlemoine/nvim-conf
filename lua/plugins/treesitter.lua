return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "vim",
        "vimdoc",
        "javascript",
        "php",
        "markdown",
        "markdown_inline",
        "typescript",
        "python",
        "bash",
        "html",
        "css",
      },

      auto_install = true,

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    },
  },
}
