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
	},
}

M.mason = {
	ensure_installed = {
		"bash-language-server",
		"black",
		"docker-compose-language-service",
		"dockerfile-language-server",
		"emmet-language-server",
		"eslint-lsp",
		"eslint_d",
		"lua-language-server",
		"prettierd",
		"pyright",
		"ruff",
		"ruff-lsp",
		"shellcheck",
		"shfmt",
		"stylua",
		"typescript-language-server",
		"yamlfmt",
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
}

return M
