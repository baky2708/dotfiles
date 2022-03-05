require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true
  },
  incremental_selection = { enable = true },
  textobjects = { enable = true },
  indent = { enable = true },
}
