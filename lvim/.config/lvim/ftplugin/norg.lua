vim.g.maplocalleader = '<Space>'

vim.keymap.set("i", "<M-CR>", "<Plug>(neorg.itero.next-iteration)", { noremap = false })

-- local neorg_keybinds = require("neorg.modules.core.keybinds.module")
-- local norg = neorg_keybinds.private.presets.neorg.norg

-- for key, elements in pairs(norg) do
--   for _, element in pairs(elements) do
--     local lhs = element[1]  -- Get the key binding
--     local rhs = element[2]  -- Get the function call
--     local opts = element[3] -- Get the options (optional)

--     -- Set the keymap
--     vim.keymap.set(key, lhs, rhs, opts)
--   end
-- end
