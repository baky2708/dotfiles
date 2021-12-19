local utils = require('utils')

-- Leader key
vim.g.mapleader = ' '
-- Moviment Split
utils.map('n', '<leader>l', '<C-w>l')
utils.map('n', '<leader>h', '<C-w>h')
utils.map('n', '<leader>j', '<C-w>j')
utils.map('n', '<leader>k', '<C-w>k')

-- Move in Insert Mode
utils.map('i', '<M-k>', '<C-o>gk')
utils.map('i', '<M-j>', '<C-o>gj')
utils.map('i', '<M-h>', '<left>')
utils.map('i', '<M-l>', '<right>')

-- Move all line
utils.map('v', 'J', ':m \'>+1<CR>gv=gv')
utils.map('v', 'K', ':m \'<-2<CR>gv=gv')

-- Copy in clip
utils.map('n', '<leader>y', '\"+y')
utils.map('v', '<leader>y', '\"+y')
utils.map('v', '<leader>Y', 'gg\"+yG')

-- Terminal
utils.map('t', '<C-\\>', '<C-\\><C-n>')
utils.map('t', '<leader>q', 'exit<CR>')
vim.cmd [[
    function! Execute()
        let extension = expand('%:e')
        let fullFileName = expand('%:t')
        if(extension == 'lua')
            :!lua %
        endif
        if(extension == 'js')
            echo extension
        endif
    endfunction

]]

-- utils.map('n', '<leader>tn', ':!node %<CR>')
utils.map('n', '<leader>tn', ':call Execute()<CR>')
utils.map('n', '<leader>tl', ':vsp<CR><C-w>l:terminal<CR>a')
utils.map('n', '<leader>th', ':vsp<CR> :terminal<CR>a')
utils.map('n', '<leader>tk', ':sp<CR> :terminal<CR>a')
utils.map('n', '<leader>tk', ':sp<CR><C-w>j :terminal<CR>a')
utils.map('n', '<leader>tt', ':vsp<CR><C-w>l:terminal<CR>a !npm test<cr>')
-- utils.map('t', '<C-\\', '<C-\\><C-n>')

-- Telescope
vim.cmd [[
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
]]

-- Nvim Tree
utils.map('n', '<leader>nn', ':NvimTreeToggle<CR>')

-- Buffers Navegation
utils.map('n', '<M-l>', ':bn<CR>')
utils.map('n', '<M-h>', ':bp<CR>')
utils.map('n', '<c-x>', ':bd<CR>')

-- Git
utils.map('n', '<leader>gs', ':G<CR>')
utils.map('n', '<leader>gf', ':diffget //2<CR>')
utils.map('n', '<leader>gj', ':diffget //3<CR>')

-- Auto Save
utils.map('n', '<leader>as', ':ASToggle<CR>')

-- Live Server
utils.map('n', '<leader>ls', ':terminal {npx live-server .}<CR>')

-- Coc

-- Set Relative Number
vim.cmd[[
" Relative or absolute number lines
function! NumberToggle()
    if(&rnu == 1)
        "set nu
        set rnu!
    else
        set rnu
        set nu
    endif
endfunction

]]

utils.map('n', '<leader><leader>r', ':call NumberToggle()<CR>')

-- Set TypeWriter Sound
-- vim.cmd[[
-- function! TypeWriter()
  -- silent! exec '!mplayer ~/.config/nvim/typewriter-key-1.mp3'
-- endfunction
-- autocmd CursorMovedI * call TypeWriter()
-- ]]
-- auuo
-- utils.map('n', '<leader><leader>t', ':call TypeWriter()<CR>')

-- Write ';' and ',' in end line
utils.map('n', '<leader>;', 'mz A;<Esc>`z<Left> ')
utils.map('n', '<leader>,', 'mz A,<Esc>`z<Left> ')

-- Change ColorScheme
vim.cmd[[
" Change color scheme
function! ChangeGruvbox()
    let actualColorScheme = g:colors_name
    if(actualColorScheme == 'gruvbox')
        colo typewriter
    else
        colo gruvbox
        highlight Normal guibg=none
    endif
endfunction

]]

utils.map('n', '<leader><leader>c', ':call ChangeGruvbox()<CR> ')
-- utils.map('n', '<leader><leader>cg', '!colo gruvbox')
-- utils.map('n', '<leader><leader>ct', '!colo typewriter-dark')

-- Easy Esc
utils.map('n', '<C-c>', '<Esc>')
