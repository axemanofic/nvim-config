local M = {}

M.opts = {
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

M.config = function(_, opts)
  dofile(vim.g.base46_cache .. "nvimtree")
  require("nvim-tree").setup(opts)

  local api = require "nvim-tree.api"

  lsp_restart = function(file)
    vim.cmd "LspRestart"
  end

  api.events.subscribe(api.events.Event.FileCreated, lsp_restart)
end

return M
