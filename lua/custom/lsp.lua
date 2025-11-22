local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
  on_attach = function(client, bufnr)
    -- Formatage automatique à la sauvegarde
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("Format", { clear = true }),
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end
  end,
})

lspconfig.intelephense.setup({
  on_attach = function(client, bufnr)
    -- Formatage automatique à la sauvegarde
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("Format", { clear = true }),
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format()
        end,
      })
    end
  end,
})

local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "html", "css", "javascript", "json", "yaml" },
    }),
  },
})
