local utils = require('utils')

local cmd = vim.cmd

-- Hability syntax
cmd 'syntax enable'

-- Numbers
utils.opt('o', 'number', true)
utils.opt('o', 'relativenumber', true)

-- Indent
utils.opt('b', 'autoindent', true)
utils.opt('b', 'smartindent', true)

-- history
utils.opt('o', 'history', 5000)

-- UTF
utils.opt('o', 'encoding', 'UTF-8')

-- Copy out nvim
utils.opt('o', 'clipboard', 'unnamedplus')

-- Fold
utils.opt('w', 'foldmethod', 'syntax')
utils.opt('w', 'foldlevel', 99)

-- Mouse on
utils.opt('o', 'mouse', 'a')

-- Cursor
utils.opt('o', 'guicursor', 'n-c:block,i-ci-v-ve:ver25,r-cr:hor20,o:hor50')

-- Search
utils.opt('o', 'hlsearch', false)
utils.opt('o', 'incsearch', true)

-- No Errors Bells
utils.opt('o', 'errorbells', false)

-- Tab
utils.opt('o', 'tabstop', 2)
utils.opt('o', 'softtabstop', 2)
utils.opt('o', 'shiftwidth', 2)

-- Substitute
utils.opt('o', 'si', true)

-- Wrap
utils.opt('o', 'wrap', true)

--Swap
utils.opt('o', 'swapfile', false)

-- Backup
utils.opt('o', 'backup', false)

-- Undo
utils.opt('o', 'undodir', '/home/baky/.vim/undodir')
utils.opt('o', 'undofile', true)

-- Colors
utils.opt('o', 'termguicolors', true)
cmd 'colorscheme gruvbox'
-- cmd 'colorscheme typewriter-night'
cmd 'highlight Normal guibg=none'

-- Scroll
utils.opt('o', 'scrolloff', 8)

-- Show Mode
utils.opt('o', 'showmode', true)

-- Complete
utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')

-- Color Column
utils.opt('o', 'colorcolumn', '80')

-- Sign Column
utils.opt('o', 'signcolumn', 'yes')

-- Time Out
--utils.opt('o', 'timeoutlen', 500)

-- Conceal
utils.opt('o', 'conceallevel', 0)

--Others
--utils.opt('o', 'hidden', true)
--utils.opt('o', 'exrc', true)
