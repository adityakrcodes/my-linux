local opt = vim.opt 

-- Setting line numbers
opt.number = true

-- Tabs and Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true

-- Line wrapping 
opt.wrap = true

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- Appearance 
opt.background = "dark" -- Make use of DARK mode in color themes
opt.termguicolors = true
opt.signcolumn = "yes"


-- Backspace 
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus") -- have to look into this

-- Splitting windows
opt.splitright = true
opt.splitbelow = true

-- Text setting
opt.iskeyword:append('-')
opt.scrolloff = 8

-- disables netrw completely
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
