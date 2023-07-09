vim.g.mapleader = " "
local keymap = vim.keymap.set

-- Telescope keymaps
-- Used to find files with the names.
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>")
-- Used to find files with the content.
keymap("n", "<leader>s", "<cmd>Telescope live_grep<cr>")
-- Used to find the buffers, simply last opened files.
keymap("n", "<leader>o", "<cmd>Telescope oldfiles<cr>")
-- Opening a LazyGit instance inside of the nvim.
keymap("n", "<leader>lg", "<cmd>LazyGit<cr>")

-- Toggle the NvimTree.
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- Moving lines up and down
keymap("v", "J", ":m '<-2<CR>gv=gv")
keymap("v", "K", ":m '>+1<CR>gv=gv")

--Code runner
keymap("n", "<F5>", "<cmd> :RunCode <cr>")
keymap("n", "<leader>r", "<cmd> :RunCode <cr>")

