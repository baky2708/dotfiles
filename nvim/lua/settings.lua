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
utils.opt('o', 'expandtab', true)
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
utils.opt('o', 'timeoutlen', 500)

-- Conceal
utils.opt('o', 'conceallevel', 0)

--Others
--utils.opt('o', 'hidden', true)
--utils.opt('o', 'exrc', true)

-- Colors
utils.opt('o', 'termguicolors', true)
vim.cmd [[
    let g:baky_colorscheme = "gruvbox"
    fun! ColorMyPencils()
        let g:gruvbox_contrast_dark = 'hard'
        if exists('+termguicolors')
          let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
          let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        endif
        let g:gruvbox_invert_selection='0'

        set background=dark
        if has('nvim')
          call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:baky_colorscheme])
        else
          colorscheme gruvbox
        endif

        highlight ColorColumn ctermbg=0 guibg=grey
        hi SignColomn guibg=none
        hi CursorLineNR guibg=None
        highlight Normal guibg=none
        highlight LineNr guifg=#5eacd3
        highlight netrwDir guifg=#5eacd3
        highlight qfFileName guifg=#aed75f
        hi TelescopeBorder guifg=#5eacd
    endfun
    nnoremap <leader>vwb :let g:baky_colorscheme =
]]

-- cmd 'colorscheme gruvbox'
-- cmd 'colorscheme typewriter-night'
-- cmd 'highlight Normal guibg=none'
