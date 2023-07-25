vim.g.mapleader = " "
local map = vim.keymap
map.set("n", "<leader>e", vim.cmd.Ex)

-- Telscope Keymaps
map.set('n', '<leader>ff', '<cmd> Telescope find_files <cr>')
map.set('n', '<leader>fo', '<cmd> Telescope oldfiles <cr>')

-- Lazygit
map.set('n', '<leader>lg', '<cmd> LazyGit <cr>')
