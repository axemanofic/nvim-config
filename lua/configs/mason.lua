local formaters = {
  "black",
  "prettierd",
  "shfmt",
  "stylua",
  "yamlfmt",
}

local lsp = {
  "bash-language-server",
  "docker-compose-language-service",
  "dockerfile-language-server",
  "emmet-language-server",
  "eslint_d",
  "lua-language-server",
  "pyright",
  "ruff-lsp",
  "shellcheck",
  "typescript-language-server",
  "djlint",
}

local ensure_installed = require("helpers").concatTables(formaters, lsp)

return {
  ensure_installed = ensure_installed,
}
