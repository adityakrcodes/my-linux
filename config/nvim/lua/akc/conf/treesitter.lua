require'nvim-treesitter.configs'.setup {
    ensure_installed = { "rust", "c", "lua", "html", "css", "javascript", "json", "typescript", "python" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

