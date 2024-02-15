local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set
local fileName = vim.fn.expand('%:t')
local output = vim.fn.expand('%:t:r')
keymap("n", "<M-k>", ":!g++ -std=c++11 -O2 -Wall " .. fileName .. " -o " .. output .. "<cr>", opts)
