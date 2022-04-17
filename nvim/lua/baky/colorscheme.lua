local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

vim.cmd [[
try
  colorscheme gruvbox
  highlight ColorColumn ctermbg=0 guibg=grey
  hi SignColomn guibg=none
  hi CursorLineNR guibg=None
  highlight Normal guibg=none
  highlight LineNr guifg=#5eacd3
  highlight netrwDir guifg=#5eacd3
  highlight qfFileName guifg=#aed75f
  hi TelescopeBorder guifg=#5eacd
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]

