local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local f = null_ls.builtins.formatting
local l = null_ls.builtins.diagnostics

---@overload fun(t1: table, t2: table)
local function concatTables(t1, t2)
	for i = 1, #t2 do
		table.insert(t1, t2[i])
	end
	return t1
end

local format = {
	f.prettierd,
	f.stylua,
	f.yamlfmt,
	f.black,
	f.shfmt,
}

local lint = {
	l.eslint_d,
	l.ruff,
	l.shellcheck,
}

local sources = concatTables(format, lint)

null_ls.setup({
	debug = true,
	sources = sources,
})
