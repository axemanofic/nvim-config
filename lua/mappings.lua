require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local term_v = function()
  require("nvchad.term").toggle { pos = "vsp" }
end

local term_h = function()
  require("nvchad.term").toggle { pos = "sp" }
end

map("n", "<C-]>", term_v, { desc = "Open vertical terminal" })
map("n", "<C-\\>", term_h, { desc = "Open vertical horizontal" })
--
map("t", "<C-]>", term_v, { desc = "Closed vertical terminal" })
map("t", "<C-\\>", term_h, { desc = "Closed vertical horizontal" })
