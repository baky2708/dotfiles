local utils = require('utils')

vim.cmd [[
    let g:baky_colorscheme = "gruvbox"
    " set background=dark
    fun! ColorMyPencils()
        let g:gruvbox_contrast_dark = 'hard'
        if exists('+termguicolors')
          let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
          let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        endif
        let g:gruvbox_invert_selection='0'
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

utils.map('n', '<leader>cmp', ':call ColorMyPencils()<CR>')
vim.cmd':call ColorMyPencils()'
