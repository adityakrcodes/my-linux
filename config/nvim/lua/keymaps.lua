vim.g.mapleader = " "
local keymap = vim.keymap.set

-- Telescope keymaps
keymap('n', '<leader>f', '<cmd>Telescope find_files<cr>')
keymap('n', '<leader>s', '<cmd>Telescope live_grep<cr>')
keymap('n', '<leader>o', '<cmd>Telescope oldfiles<cr>')
--Lazygit
keymap('n', '<leader>lg', '<cmd>LazyGit<cr>')

--NvimTree
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
