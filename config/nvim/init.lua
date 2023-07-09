-- Will check if packer is installed or not!
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	execute("packadd packer.nvim")
end

require("plugins")
require("keymaps")
require("options")
require("colorscheme")
require("runner")
-- Plugin Configs
require("plugin_configs.dashboard")
require("plugin_configs.presence")
require("plugin_configs.lualine")
require("plugin_configs.nvim-tree")
require("plugin_configs.nvim-cmp")
require("plugin_configs.lsp.mason")
require("plugin_configs.lsp.lsp-config")
require("plugin_configs.lsp.null-ls")
require("plugin_configs.toggleterm")
