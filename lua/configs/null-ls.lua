local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local f = null_ls.builtins.formatting
local l = null_ls.builtins.diagnostics


local format = {
	f.prettierd,
	f.stylua,
	f.yamlfmt,
	f.black,
	f.shfmt,
}

local lint = {
	l.eslint_d,
	l.shellcheck,
  l.djlint,
  l.ruff_lsp,
}

local sources = require("helpers").concatTables(format, lint)

null_ls.setup({
	debug = true,
	sources = sources,
})
