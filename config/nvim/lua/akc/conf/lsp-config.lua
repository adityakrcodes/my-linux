local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
    'tsserver',
    'eslint',
})
local keymap = vim.keymap.set
local cmp = require('cmp')
local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
    sources = {
    {name = 'nvim_lsp'},
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.confirm({select = true}),

    }
})

lsp.on_attach(function (client, bufnr)

end)
-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
