local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"markdown",
		"markdown_inline",
		"python",
		"yaml",
		"json",
		"toml",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- LSP
		"docker-compose-language-service",
		"dockerfile-language-server",
		"lua-language-server",
		"pyright",
		"ruff-lsp",

		-- DAP
		-- Empty

		-- Linter
		"ruff",

		-- Foramatter
		"black",
		"blackd-client",
		"prettier",
		"prettierd",
		"stylua",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
	filters = {
		dotfiles = false,
	},
}

return M
