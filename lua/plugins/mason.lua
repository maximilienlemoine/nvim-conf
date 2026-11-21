-- Le tree-sitter du système (0.20) est trop ancien pour nvim-treesitter (>= 0.25 requis).
-- Mason en installe une version récente, ajoutée au PATH de nvim.
return {
  "mason-org/mason.nvim",
  opts = { ensure_installed = { "tree-sitter-cli" } },
}
