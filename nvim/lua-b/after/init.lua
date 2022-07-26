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
require('after.ls')

-- Test
vim.cmd [[
  let test#javascript#reactscripts#options = "--watchAll=false"
]]
