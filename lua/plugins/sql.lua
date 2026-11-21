-- SQL : dialecte PostgreSQL pour sqlfluff (lint + format)
-- Un fichier .sqlfluff dans le projet reste prioritaire pour les autres règles.
return {
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        sqlfluff = { args = { "lint", "--format=json", "--dialect=postgres", "-" } },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        sqlfluff = { args = { "format", "--dialect=postgres", "-" } },
      },
    },
  },
}
