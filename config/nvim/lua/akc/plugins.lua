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
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "kdheepak/lazygit.nvim",
    	cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    	},
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'Pocco81/auto-save.nvim',
        config = function()
            require('auto-save').setup{
                -- config here
            }
        end,
    },
    {'ayu-theme/ayu-vim', as = 'ayu'},
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'m4xshen/autoclose.nvim'},
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {'numToStr/Comment.nvim',
        opts = {
            mappings = {
                basic = true,
            },
        },
        lazy = false,
    },
    {
    "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
    {'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
    },
        init = function() vim.g.barbar_auto_setup = false end,
    },
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

}

require("lazy").setup(plugins, opts)
