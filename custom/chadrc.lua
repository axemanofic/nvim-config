---@type ChadrcConfig
local M = {}

local dashboards = require("custom.configs.dashboard")
local highlights = require("custom.highlights")

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "github_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "default",
    overriden_modules = nil,
  },
  nvdash = {
    load_on_startup = true,
    header = dashboards.dashboard.shrek,
  },
  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
