---@type ChadrcConfig
local M = {}

local dashboards = require "configs.dashboard"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "github_light" },

  hl_override = {
    Comment = {
      italic = true,
    },
  },
  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },

  statusline = {
    theme = "default",
    overriden_modules = nil,
  },
  nvdash = {
    load_on_startup = true,
    header = dashboards.dashboard.pickachu,
  },
  tabufline = {
    lazyload = true,
    overriden_modules = nil,
  },
  term = {
    sizes = {vsp = 0.4}
  },
}

return M
