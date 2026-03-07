return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.blade_formatter,
        null_ls.builtins.formatting.sqlfmt,
        null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.formatting.djlint,
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.diagnostics.phpcs,
        null_ls.builtins.diagnostics.sqruff,
      },
    })

    vim.keymap.set("n", "<leader>Gf", vim.lsp.buf.format, { desc = "Format document" })
  end,
}
