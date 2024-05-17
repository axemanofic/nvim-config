local conform = require "configs.conform"
local nvimtree = require "configs.nvimtree"
local highlight_colors = require "configs.highlight_colors"
local render_markdown = require "configs.render_markdown"

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = conform.opts,
    config = conform.config,
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
    opts = require "configs.mason",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = nvimtree.opts,
    config = nvimtree.config,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "Exafunction/codeium.vim",
    lazy = false,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "brenoprata10/nvim-highlight-colors",
    opts = highlight_colors.opts,
    config = highlight_colors.config,
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    name = "render-markdown", -- Only needed if you have another plugin named markdown.nvim
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = render_markdown.opts,
    config = render_markdown.config,
  },
  {
    "folke/neodev.nvim",
    config = function()
      require("neodev").setup {}
    end,
  },
}
