-- LazyVim (et les extras de langage) gèrent déjà highlight, indent et la plupart des parsers.
-- On complète simplement la liste.
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "css", "scss", "sql" },
    },
  },
}
