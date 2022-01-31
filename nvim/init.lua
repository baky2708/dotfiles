local fn = vim.fn
local execute = vim.api.nvim_command

-- Sensible defaults
require('settings')
require('plugins')
require('keymappings')
require('after')
require('lsp')
vim.cmd[[
	source ~/.config/nvim/coc.vim
]]
-- require'lspconfig'.tsserver.setup{}
