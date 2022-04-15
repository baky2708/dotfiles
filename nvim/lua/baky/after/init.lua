require('baky.after.nvim_commenter')
require('baky.after.auto_pairs')
require('baky.after.indentline')
require('baky.after.line')
require('baky.after.buffer')
require('baky.after.treesitter')
require('baky.after.tree')
require('baky.after.tele')
require('baky.after.lsp')
require('baky.after.colors')
require('baky.after.dbui')
require('baky.after.ls')

-- Test
vim.cmd [[
  let test#javascript#reactscripts#options = "--watchAll=false"
]]
