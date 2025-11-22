local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier, -- JS/TS/HTML/CSS
  },
  on_attach = function(client)
    if client.supports_method("textDocument/formatting") then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
    end
  end,
})
