local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local f = null_ls.builtins.formatting
local l = null_ls.builtins.diagnostics

local sources = {
	-- formatting
	f.prettier,
	f.stylua,
	f.yamlfmt,
	f.black,
	-- lint
	l.shellcheck,
  l.eslint,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
