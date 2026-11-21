-- Désactive phpcs (avertissements Squiz/PEAR) ajouté par l'extra lang.php.
-- Le formatage reste assuré par php-cs-fixer.
return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = function(_, opts)
    opts.linters_by_ft = opts.linters_by_ft or {}
    opts.linters_by_ft.php = {}
  end,
}
