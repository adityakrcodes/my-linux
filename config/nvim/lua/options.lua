local opt = vim.opt -- Ease of access

-- Line numbers
opt.number = true

--Tabs and Indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

--cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true --uses true colors
opt.signcolumn = "yes" --adds padding to right

-- split windows
opt.splitright = true
opt.splitbelow = true

-- making whole string a word of includes '-'
opt.iskeyword:append("-")

--clipboard
opt.clipboard:append("unnamedplus")
