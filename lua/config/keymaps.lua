-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function block_arrows()
  vim.notify("🚫 Utilise hjkl !", vim.log.levels.WARN)
end

vim.keymap.set("", "<Up>", block_arrows)
vim.keymap.set("", "<Down>", block_arrows)
vim.keymap.set("", "<Left>", block_arrows)
vim.keymap.set("", "<Right>", block_arrows)
