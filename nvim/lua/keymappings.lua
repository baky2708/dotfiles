-- utils;
local utils = require('utils');

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
utils.map('n', '<leader>Y', 'gg\"+yG')

-- Terminal
vim.cmd [[
    function! Execute()
        let extension = expand('%:e')
        let fullFileName = expand('%:t')
        if(extension == 'lua')
            :!lua %
        endif
        if(extension == 'js')
            :!node %
        endif
    endfunction

]]
utils.map('t', '<C-\\>', '<C-\\><C-n>')
utils.map('t', '<leader>q', 'exit<CR>')
utils.map('n', '<leader>tn', ':call Execute()<CR>')
utils.map('n', '<leader>tl', ':vsp<CR><C-w>l:terminal<CR>a')
utils.map('n', '<leader>th', ':vsp<CR> :terminal<CR>a')
utils.map('n', '<leader>tk', ':sp<CR> :terminal<CR>a')
utils.map('n', '<leader>tk', ':sp<CR><C-w>j :terminal<CR>a')
utils.map('n', '<leader>tt', ':vsp<CR><C-w>l:terminal<CR>a !npm test<cr>')

-- Telescope

-- Nvim Tree
utils.map('n', '<leader>nn', ':NvimTreeToggle<CR>')

-- Buffers Navegation
utils.map('n', '<M-l>', ':bn<CR>')
utils.map('n', '<M-h>', ':bp<CR>')
utils.map('n', '<C-q>', ':bd<CR>')

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

-- Easy Esc
vim.cmd [[
imap <C-c> <Esc>
]]

-- Markdown
utils.map('n', '<leader><leader>m', ':Glow<CR>')

-- Code Actions
utils.map('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>')
utils.map('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
utils.map('n', '<leader>vws', ':lua vim.lsp.buf.workspace_symbol()<CR>')
utils.map('n', '<leader>vd', ':lua vim.diagnostic.open_float()<CR>')
utils.map('n', '[d', ':lua vim.lsp.diagnostic.goto_next()<CR>')
utils.map('n', ']d', ':lua vim.lsp.diagnostic.goto_prev()<CR>')
utils.map('n', '<leader>vca', ':lua vim.lsp.buf.code_action()<CR>')
utils.map('n', '<leader>vrr', ':lua vim.lsp.buf.references()<CR>')
utils.map('n', '<leader>vrn', ':lua vim.lsp.buf.rename()<CR>')

-- Sql
utils.map('n', '<leader>dbs', ':DBUI<CR>')

-- Harpoon
vim.cmd [[
nnoremap <silent><leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <silent><C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <silent><leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <silent><M-;> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <silent><M-,> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <silent><M-.> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <silent><M-p> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <silent><M-a> :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <silent><M-o> :lua require("harpoon.ui").nav_file(6)<CR>
nnoremap <silent><M-e> :lua require("harpoon.ui").nav_file(7)<CR>
nnoremap <silent><M-u> :lua require("harpoon.ui").nav_file(8)<CR>
]]

vim.cmd [[
function! Exec_on_term(cmd, pos)
  exec "normal! ma"
  let backup_a=@a
  let backup_b=@b
  let sep = "------"
  exec "normal! ?".sep."\<CR>jV/".sep."\<CR>k\"ay"
  exec "normal! /".sep."\<CR>jO"
  if a:pos == "next"
      exec "normal! O".sep
      exec "normal! jddkko"
  endif
  exec "normal! V/".sep."\<CR>kdO"
  let @b=system(@a)
  execute "put b"
  execute "normal! ?".sep."\<CR>jdd"
  exec "normal 'a"
  let @b=backup_b
  let @a=backup_a
endfunction
nnoremap <Leader>dr :call Exec_on_term("normal", "curr")<CR>
vnoremap <F6> :<c-u>call Exec_on_term("visual", "curr")<CR>
nnoremap <Leader>dn :call Exec_on_term("normal", "next")<CR>
]]

vim.cmd[[
" List available databases
nnoremap <leader>mdb <cmd>lua require('mongo-nvim.telescope.pickers').database_picker()<cr>
" List collections in database (arg: database name)
nnoremap <leader>mdbc <cmd>lua require('mongo-nvim.telescope.pickers').collection_picker('commerce')<cr>
" List documents in a database's collection (arg: database name, collection name)
nnoremap <leader>mdbd <cmd>lua require('mongo-nvim.telescope.pickers').document_picker('examples', 'movies')<cr>
  ]]

-- exec mvn project

-- local function sayYaya()
--   os.execute('echo yaya');
-- end
-- --
-- utils.map('n', '<leader>ya', ':lua require("after.yaya")<CR>')
vim.cmd[[
function! MvnExec()
  let hei = split(getline(1))
  let ya = get(hei, 1, 'default')
  let package = substitute(ya, ';', '\.', '')
  call remove(hei, 0)
  let fileName = expand('%:t:r')
  let toExec = 'mvn exec:java -Dexec.mainClass='.package.fileName
  " let toCopy = package.fileName
  " let go = 'ls'
  " let @+ = toCopy
  " echo 'Copied:' toCopy
  " exec ':terminal 'go '&&' toExec
  exec ':terminal 'toExec
endfunction
]]

-- utils.map('n', '<leader>ya', ':call MvnExec()<CR>')
utils.map('n', '<leader>ya', ':vsp<CR><C-w>l:call MvnExec()<CR>')
