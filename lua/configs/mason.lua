local formaters = {
  "black",
  "prettierd",
  "shfmt",
  "stylua",
  "yamlfmt",
}

local lsp = {
  "bash-language-server",
  "dockerfile-language-server",
  "emmet-language-server",
  "eslint_d",
  "lua-language-server",
  "pyright",
  "ruff-lsp",
  "shellcheck",
  "typescript-language-server",
  "djlint",
  "css-lsp",
  "html-lsp",
}

local ensure_installed = require("helpers").concatTables(formaters, lsp)

return {
  ensure_installed = ensure_installed,
}
