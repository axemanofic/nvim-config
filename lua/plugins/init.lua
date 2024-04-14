local nvimtree = require "nvimtree"

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = require "mason",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "treesitter",
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = nvimtree.opts,
    config = nvimtree.config,
  },
}
