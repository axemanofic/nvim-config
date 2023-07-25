local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local f = null_ls.builtins.formatting

local sources = {
  -- formatting
  f.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  f.stylua,
  f.yamlfmt,
  f.black,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
