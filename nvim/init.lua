-- Sensible defaults
require('settings')
require('plugins')
require('keymappings')
require('after')
require('lsp')
vim.cmd[[
	source ~/.config/nvim/coc.vim
]]
