-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Undo / Redo
map("n", "<C-z>", "u") -- Ctrl+Z = undo
map("i", "<C-z>", "<C-o>u")
map("n", "<C-S-z>", "<C-r>") -- Ctrl+Shift+Z = redo
map("i", "<C-S-z>", "<C-o><C-r>")

-- Copier / Couper / Coller (mode visuel)
map("v", "<C-c>", '"+y') -- Ctrl+C = copy
map("v", "<C-x>", '"+d') -- Ctrl+X = cut
map({ "n", "i", "v" }, "<C-v>", '"+p') -- Ctrl+V = paste

-- Ctrl+Backspace : effacer un mot
map("i", "<C-BS>", "<C-w>")
map("i", "<C-H>", "<C-w>")
