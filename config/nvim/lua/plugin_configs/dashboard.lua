local dashboard = require("dashboard")
local plugins_count = vim.fn.len(vim.fn.globpath("~/.local/share/nvim/site/pack/packer/start", "*", 0, 1))

local dashboard_height = 27

dashboard.setup({
	theme = "doom",
	packages = true,
	config = {

		header = {
			"",
			" █████╗ ██╗  ██╗ ██████╗",
			"██╔══██╗██║ ██╔╝██╔════╝",
			"███████║█████╔╝ ██║     ",
			"██╔══██║██╔═██╗ ██║     ",
			"██║  ██║██║  ██╗╚██████╗",
			"╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝",
			"<AdityaKrCodes/>",
			"",
		},
		center = {
			{ icon = "  ", desc = "New File                       ", shortcut = "LDR n", action = "enew" },

			{
				icon = " 漣 ",
				desc = "Neovim config                  ",
				shortcut = "LDR nc",
				action = "lua ",
			},

			{ icon = "  ", desc = "Competitive                    ", shortcut = "LDR c", action = "CphReceive" },

			{
				icon = "  ",
				desc = "Find Files                     ",
				shortcut = "LDR f",
				action = "Telescope find_files",
			},

			{
				icon = "  ",
				desc = "Find History                   ",
				shortcut = "LDR o",
				action = "Telescope oldfiles",
			},
		},
		footer = {
			"-- Neovim Loaded " .. plugins_count .. " Plugins --",
		},
		vim.cmd([[highlight DashboardHeader guifg=#ffffff]]),
		header_pad = math.floor((vim.api.nvim_list_uis()[1]["height"] - dashboard_height) / 4),
	},
})
