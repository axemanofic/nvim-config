require "nvchad.mappings"

local terminal = require "nvterm.terminal"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "C-]", terminal.toggle "vertical", { desc = "Open vertical terminal" })
map("n", "C-\\", terminal.toggle "horizontal", { desc = "Open vertical horizontal" })

map("t", "C-]", terminal.toggle "vertical", { desc = "Closed vertical terminal" })
map("t", "C-\\", terminal.toggle "horizontal", { desc = "Closed vertical horizontal" })
