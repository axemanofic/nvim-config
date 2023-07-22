---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require("custom.highlights")

M.ui = {
	theme = "tokyodark",

	hl_override = highlights.override,
	hl_add = highlights.add,
	statusline = {
    separator_style = "block",
		overriden_modules = function()
			local st_modules = require "nvchad_ui.statusline.vscode_colored"
			return {
				mode = function()
					return st_modules.mode() .. ""
				end,
			}
		end,
	},
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require("custom.mappings")

return M
