local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

lspconfig.emmet_language_server.setup({
  filetypes = { "css", "html", "less", "sass", "scss" },
  init_options = {
    --- @type table<string, any> https://docs.emmet.io/customization/preferences/
    preferences = {},
    --- @type "always" | "never" defaults to `"always"`
    showexpandedabbreviation = "always",
    --- @type boolean defaults to `true`
    showabbreviationsuggestions = true,
    --- @type boolean defaults to `false`
    showsuggestionsassnippets = false,
    --- @type table<string, any> https://docs.emmet.io/customization/syntax-profiles/
    syntaxprofiles = {},
    --- @type table<string, string> https://docs.emmet.io/customization/snippets/#variables
    variables = {},
    --- @type string[]
    excludelanguages = {},
  },
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
})

lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  -- settings = {
  --   pyright = {
  --     disableOrganizeImports = true,
  --   },
  --   python = {
  --     analysis = {
  --       ignore = { "*" },
  --     },
  --   },
  -- },
  on_new_config = function(config, root_dir)
    local env = vim.trim(vim.fn.system('cd "' .. root_dir .. '"; poetry env info -p 2>/dev/null'))
    if string.len(env) > 0 then
      config.settings.python.pythonPath = env .. "/bin/python"
    end
  end,
})

-- lspconfig.ruff_lsp.setup({
--   on_attach = function(client)
--     if client.name == "ruff_lsp" then
--       client.server_capabilities.hoverProvider = false
--     end
--   end,
-- })
