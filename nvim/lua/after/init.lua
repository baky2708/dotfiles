require('after.nvim_commenter')
require('after.auto_pairs')
require('after.indentline')
require('after.line')
require('after.buffer')
require('after.treesitter')
require('after.tree')
require('after.tele')
require('after.lsp')
require('after.colors')
require('after.dbui')

-- Test
vim.cmd [[
  let test#javascript#reactscripts#options = "--watchAll=false"
]]

-- DB
vim.cmd [[
	let g:sqh_provider = 'mysql'

	let g:sqh_connections = {
			\ 'default': {
			\   'user': 'root',
			\   'password': '2708',
			\   'host': 'localhost'
			\},
			\ 'live': {
			\   'user': 'root',
			\   'password': 'jerw5Y^$Hdfj',
			\   'host': '46.121.44.392'
			\}
	\}
]]
