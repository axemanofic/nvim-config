---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
	theme = "tokyodark",
	theme_toggle = { "tokyodark", "tokyonight" },

	hl_override = highlights.override,
	hl_add = highlights.add,
	statusline = {
		overriden_modules = function()
			local st_modules = require("nvchad_ui.statusline.vscode_minimal")
			return {
				mode = function()
					return st_modules.mode() .. " bruh "
					-- or just return "" to hide this module
				end,
			}
		end,
	},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
