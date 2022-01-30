local utils = require('utils')

local cmd = vim.cmd

-- Hability syntax
cmd 'syntax enable'

-- Copy out nvim
utils.opt('o', 'clipboard', 'unnamedplus')
