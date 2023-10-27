vim.g.mapleader = " "
local map = vim.keymap

-- Telscope Keymaps
map.set('n', '<leader>ff', '<cmd> Telescope find_files <cr>')
map.set('n', '<leader>fo', '<cmd> Telescope oldfiles <cr>')

-- Lazygit
map.set('n', '<leader>lg', '<cmd> LazyGit <cr>')

-- Binding to swtich to normal mode in terminal, press <Esc> two times
vim.cmd(':tnoremap <Esc><Esc> <C-\\><C-n>')

-- NvimTree
map.set('n', '<leader>e', '<cmd> NvimTreeToggle <cr>')

-- Code runner and terminal remaps
map.set('n', '<leader>r', '<cmd> lua run_code() <cr>')
map.set('n', '<leader>t', '<cmd> :terminal <cr>')
