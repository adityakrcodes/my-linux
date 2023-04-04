local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")
mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"html",
		"bashls", -- BASH
		"clangd", -- C
		"cssls", -- CSS
		"eslint",
		"jdtls", -- Java
		"tsserver", -- JavaScript
		"lua_ls", -- LUA
		"remark_ls", -- Markdown
		"pylsp", -- Python Documentation
		"pyre", -- Python Language
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"pyre",
		"black",
		"stylua",
		"eslint_d",
	},
})
