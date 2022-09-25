require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true,
  contrast = "hard", -- can be "hard", "soft" or empty string
  overrides = {
    CursorLineNr = { fg = '#fabd2f' },
  },
})
vim.cmd [[
  colorscheme gruvbox
  hi LineNr guifg=#5eacd3
  hi ColorColumn ctermbg=0 guibg=grey
  hi CursorLineNR guibg=None
  highlight Normal guibg=none
]]

-- local colorscheme = "darkplus"
-- local colorscheme = "gruvbox"
-- local colorscheme = "tokyonight"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   return
-- end
-- vim.cmd [[
--   highlight ColorColumn ctermbg=0 guibg=grey
--   hi SignColomn guibg=none
--   highlight netrwDir guifg=#5eacd3
--   highlight qfFileName guifg=#aed75f
--   hi TelescopeBorder guifg=#5eacd
-- ]]
