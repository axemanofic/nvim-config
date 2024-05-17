require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- TERMINAL
local term_v = function()
  require("nvchad.term").toggle { pos = "vsp" }
end

local term_h = function()
  require("nvchad.term").toggle { pos = "sp" }
end

local term_f = function()
  require("nvchad.term").toggle { pos = "float" }
end

map("n", "<C-]>", term_v, { desc = "Open vertical terminal" })
map("n", "<C-\\>", term_h, { desc = "Open horizontal terminal" })
map("n", "<C-f>", term_f, { desc = "Open float terminal" })
--
map("t", "<C-]>", term_v, { desc = "Closed vertical terminal" })
map("t", "<C-\\>", term_h, { desc = "Closed horizontal terminal" })
map("t", "<C-f>", term_f, { desc = "Closed float terminal" })
