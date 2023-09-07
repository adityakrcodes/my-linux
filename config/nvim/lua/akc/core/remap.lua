vim.g.mapleader = " "
local map = vim.keymap

-- Telscope Keymaps
map.set('n', '<leader>ff', '<cmd> Telescope find_files <cr>')
map.set('n', '<leader>fo', '<cmd> Telescope oldfiles <cr>')
map.set('n', '<leader>e', '<cmd> Explore  <cr>')
-- Lazygit
map.set('n', '<leader>lg', '<cmd> LazyGit <cr>')

-- Binding to swtich to normal mode in terminal, press <Esc> two times
vim.cmd(':tnoremap <Esc><Esc> <C-\\><C-n>')
