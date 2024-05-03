local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'kyazdani42/nvim-web-devicons' }
    },
    {'github/copilot.vim', lazy=false},
    {'wakatime/vim-wakatime', lazy=false},
    {'andweeb/presence.nvim', lazy=false},
}

require("lazy").setup(plugins, opts)
