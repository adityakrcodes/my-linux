return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- Important Plugins
	use("andweeb/presence.nvim")

	--Theme
	use("folke/tokyonight.nvim")

	--Wakatime plugin
	use("wakatime/vim-wakatime")

	--plenaty
	use("nvim-lua/plenary.nvim")

	--telescope plugin
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	--treesitter plugin
	use({
		"nvim-treesitter/nvim-treesitter",
		run = "TSUpdate",
	})

	--auto-pairs plugin
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	--Lazygit
	use("kdheepak/lazygit.nvim")

	--Vim Surround | It is used to surround the word by '', "", using keymaps | 'y' 's' then 'w' then the character you want your word to surround.
	use("tpope/vim-surround")

	--File explorer
	use("kyazdani42/nvim-tree.lua")

	--bottom bar line thing
	use("nvim-lualine/lualine.nvim")

	-- Icons for files
	use("kyazdani42/nvim-web-devicons")

	--autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	--Code snippets
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- managing and installing lsp servers and formatters and linters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use({
		"glepnir/lspsaga.nvim",
		opt = true,
		branch = "main",
		event = "LspAttach",

		requires = {
			"nvim-tree/nvim-web-devicons",
			"nvim-tree/nvim-treesitter",
		},
	})
	use("neovim/nvim-lspconfig")
	use("onsails/lspkind-nvim")
	use("jose-elias-alvarez/typescript.nvim")

	-- Formatters and linters
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
end)
