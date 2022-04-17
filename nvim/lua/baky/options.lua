local utils = require('utils')

-- :help options
vim.opt.backup = false -- y                          -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- y               -- allows neovim to access the system clipboard
vim.opt.conceallevel = 0 -- y                        -- so that `` is visible in markdown files
vim.opt.mouse = "a" -- y                            -- allow the mouse to be used in neovim
vim.opt.smartindent = true -- y                     -- make indenting smarter again
vim.opt.swapfile = false -- y                       -- creates a swapfile
vim.opt.termguicolors = true -- y                   -- set term gui colors (most terminals support this)
vim.opt.undofile = true -- y                        -- enable persistent undo
vim.opt.expandtab = true -- y                       -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- y                         -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- y                            -- insert 2 spaces for a tab
vim.opt.number = true -- y                          -- set numbered lines
vim.opt.signcolumn = "yes" -- y                     -- always show the sign column, otherwise it would shift the text each time
vim.opt.scrolloff = 8 -- y                          -- is one of my fav



vim.opt.completeopt = { "menuone", "noselect" } -- d -- mostly just for cmp
vim.opt.fileencoding = "utf-8" -- d                 -- the encoding written to a file
vim.opt.hlsearch = false -- d                         -- highlight all matches on previous search pattern
vim.opt.showmode = false -- d                       -- we don't need to see things like -- INSERT -- anymore
vim.opt.timeoutlen = 400 -- d                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.relativenumber = true -- d                 -- set relative numbered lines
vim.opt.wrap = true -- d                           -- display lines as one long line


vim.opt.cmdheight = 2 -- n                           -- more space in the neovim command line for displaying messages
vim.opt.ignorecase = true -- n                      -- ignore case in search patterns
vim.opt.pumheight = 10 -- n                         -- pop up menu height
vim.opt.showtabline = 2 -- n                        -- always show tabs
vim.opt.smartcase = true -- n                       -- smart case
vim.opt.splitbelow = true -- n                      -- force all horizontal splits to go below current window
vim.opt.splitright = true -- n                      -- force all vertical splits to go to the right of current window
vim.opt.updatetime = 300 -- n                       -- faster completion (4000ms default)
vim.opt.writebackup = false -- n                    -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.cursorline = true -- n                      -- highlight the current line
vim.opt.sidescrolloff = 8 -- n
vim.opt.guifont = "monospace:h17" -- n              -- the font used in graphical neovim applications
vim.opt.numberwidth = 2 -- n                        -- set number column width to 2 {default 4}
vim.opt.shortmess:append "c" -- n
vim.cmd "set whichwrap+=<,>,[,],h,l" -- n
vim.cmd [[set iskeyword+=-]] -- n
vim.cmd [[set formatoptions-=cro]] -- n -- TODO: this doesn't seem to work


-- dont have
-- vim.cmd 'syntax enable'
-- utils.opt('b', 'autoindent', true)
-- utils.opt('o', 'history', 5000)
-- utils.opt('w', 'foldmethod', 'syntax')
-- utils.opt('w', 'foldlevel', 99)
-- utils.opt('o', 'guicursor', 'n-c:block,i-ci-v-ve:ver23,r-cr:hor20,o:hor50')
-- utils.opt('o', 'incsearch', true)
-- utils.opt('o', 'errorbells', false)
-- utils.opt('o', 'softtabstop', 2)
-- utils.opt('o', 'si', true)
-- utils.opt('o', 'undodir', '/home/baky/.vim/undodir')
utils.opt('o', 'colorcolumn', '80')

