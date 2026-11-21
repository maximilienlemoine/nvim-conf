-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Thème clair
vim.o.background = "light"

-- Indentation : 4 espaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Orthographe : LazyVim l'active déjà pour markdown / text / gitcommit
vim.opt.spelllang = { "fr", "en" }

-- PHP / Symfony : intelephense plutôt que phpactor
vim.g.lazyvim_php_lsp = "intelephense"

-- Outils Mason prioritaires sur ceux du système (ex. tree-sitter 0.20 trop ancien dans /usr/bin)
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

-- Python : basedpyright plutôt que pyright
vim.g.lazyvim_python_lsp = "basedpyright"
