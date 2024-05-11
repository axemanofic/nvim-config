-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "bash_language_server",
  "dockerfile_language_server",
  "docker_compose_language_service",
  "lua_ls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

-- Python
lspconfig.emmet_language_server.setup {
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
}

local function on_new_config(config, root_dir)
  local env = vim.trim(vim.fn.system('cd "' .. root_dir .. '"; poetry env info -p 2>/dev/null'))
  if string.len(env) > 0 then
    config.settings.python.pythonPath = env .. "/bin/python"
  end
end

lspconfig.pyright.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  on_init = on_init,
  on_new_config = on_new_config,
}

lspconfig.ruff_lsp.setup {
  on_attach = function(client)
    if client.name == "ruff_lsp" then
      client.server_capabilities.hoverProvider = false
    end
  end,
  capabilities = capabilities,
  on_init = on_init,
  on_new_config = on_new_config,
}
