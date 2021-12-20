-- Nvim Tree config
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    }
  }
}

-- Nvim Commenter
require('Comment').setup()

-- Nvim Auto Pairs
require('nvim-autopairs').setup{}

-- Nvim Indent
--require('indent_guides').setup()
vim.opt.list = true
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
}

-- Nvim Status Line
require('lualine').setup{
	options = {theme = 'gruvbox'},
}

-- Nvim Ale
vim.cmd [[
	let g:ale_linters = {'javascript': ['eslint']}
	let g:ale_completion_enabled=0
	set updatetime=300
]]

-- Coc

-- Buffer Linvim.opt.termguicolors = true
require("bufferline").setup{}

-- Markdown preview
vim.cmd [[let vim_markdown_preview_github=1]]
