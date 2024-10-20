local lsp = require('lsp-zero')

lsp.on_attach(function(client,bufnr)
    lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'bashls', 'clangd', 'cssls', 'html', 'jsonls', 'pyright', 'rust_analyzer', 'vimls'},
    handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})
