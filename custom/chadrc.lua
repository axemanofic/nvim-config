---@type ChadrcConfig
local M = {}

local highlights = require("custom.highlights")

M.ui = {
	theme = "chadracula",
	theme_toggle = { "chadracula", "github_light" },

	hl_override = highlights.override,
	hl_add = highlights.add,
	statusline = {
		theme = "default",
		separator_style = "block",
		overriden_modules = nil,
	},
	nvdash = {
		load_on_startup = false,
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
