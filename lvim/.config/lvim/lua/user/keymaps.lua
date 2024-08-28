M = {}
lvim.leader = "space"
lvim.keys.normal_mode["<CR>"] = false

local opts = { noremap = true, silent = true }
-- For the description on keymaps, I have a function getOptions(desc) which returns noremap=true, silent=true and desc=desc. Then call: keymap(mode, keymap, command, getOptions("some randome desc")

lvim.builtin.which_key.mappings["n"] = {
  name = "Nabla",
  p = { "<cmd>lua require'nabla'.popup()<CR>", "popup" },
  v = { "<cmd>lua require'nabla'.toggle_virt()<CR>", "virt" },
}

lvim.builtin.which_key.mappings["M"] = {
  name = "Molten",
  i = { "<cmd>MoltenInit<CR>", "init" },
  e = { "<cmd>MoltenEvaluateLine<CR>", "eval line" },
}
lvim.builtin.which_key.vmappings["M"] = {
  name = "Molten",
  e = { ":<BS><BS><BS><BS><BS>MoltenEvaluateVisual<CR>", "eval visual" },
}

local keymap = vim.keymap.set

keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)
keymap("n", "<C-S>", ":w<cr>", opts)
keymap("i", "jk", "<ESC>", opts)

-- Naviagate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Tabs --
keymap("n", "\\", ":tabnew %<cr>", opts)
keymap("n", "\\", ":tabnew %<cr>", opts)
keymap("n", "<s-\\>", ":tabclose<cr>", opts)
keymap("n", "<s-\\>", ":tabonly<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<c-j>", "<c-d>", opts)
keymap("n", "<c-k>", "<c-u>", opts)
keymap("n", "<c-m>", "<s-m>", opts)

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("x", "p", [["_dP]])
-- keymap("v", "p", '"_dp', opts)
-- keymap("v", "P", '"_dP', opts)

keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)

return M
