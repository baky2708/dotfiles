-- number j k
-- ciw
-- f t
-- ; ,

-- True
-- vim.api.nvim_set_keymap("", "<Space", "<Nop>", { noremap = true, silent = true} )

local opts = { noremap = true, silent = true }


local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<M-l>", ":bnext<CR>", opts)
keymap("n", "<M-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Move in Insert Mode
keymap('i', '<M-k>', '<C-o>gk', opts)
keymap('i', '<M-j>', '<C-o>gj', opts)
keymap('i', '<M-h>', '<left>', opts)
keymap('i', '<M-l>', '<right>', opts)

-- Motions in Insert Mode
keymap('i', '<M-w>', '<C-o>w', opts)
keymap('i', '<M-b>', '<C-o>b', opts)
keymap('i', '<M-d>', '<C-o>d', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- -- I hate typing these
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)
keymap("x", "H", "^", opts)
keymap("x", "L", "$", opts)
keymap("o", "H", "^", opts)
keymap("o", "L", "$", opts)

-- Enter to main menu
keymap("n", "<RightMouse>", ":Alpha<CR>", opts)

vim.cmd[[
function! MvnGetPackageFile()
  let hei = split(getline(1))
  let ya = get(hei, 1, 'default')
  let package = substitute(ya, ';', '\.', '')
  call remove(hei, 0)
  let fileName = expand('%:t:r')
  return package.fileName
endfunction
]]

vim.cmd[[
function! MvnExec()
  let package_file = MvnGetPackageFile()
  let toExec = 'mvn exec:java -Dexec.mainClass='.package_file
  exec ':terminal 'toExec
endfunction
]]

vim.cmd[[
function! MvnCopy()
  let package_file = MvnGetPackageFile()
  let @+ = package_file
  echo 'Copied:' package_file
endfunction
]]

keymap('n', '<leader>ma', ':vsp<CR><C-w>l:call MvnExec()<CR>', opts)
keymap('n', '<leader>tl', ':vsp<CR><C-w>l:terminal<CR>a', opts)

keymap('n', '<leader>me', ':exec MvnCopy()<CR>', opts)
keymap('n', '<leader>mp', ':!mvn clean package<CR>', opts)

-- Write ';' and ',' in end line
keymap('n', '<leader>;', 'mz A;<Esc>`z<Left> ', opts)
keymap('n', '<leader>,', 'mz A,<Esc>`z<Left> ', opts)


-- New Esc
vim.cmd [[
  imap <C-c> <Esc>
]]

-- ################# Plugins #################

-- Git: main key = 'g'
local gitCommands = {
  a = { 'n', ':G<CR>'},
  o = { 'n', ':Git status<CR>'},
  e = { 'n', ':Gvdiffsplit<CR>'},
}

for k, v in pairs(gitCommands) do
  keymap(v[1], '<leader>g'..k, v[2], opts)
end

-- NvimTree: main key = 'n'
keymap("n", "<leader>n", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>fk", ":Telescope keymaps<CR>", opts)

-- Telescope: main key = 't'

local telescopeCommands = {
  a = { 'n', ':Telescope find_files<CR>'},
  o = { 'n', ':Telescope live_grep<CR>'},
  e = { 'n', ':Telescope projects<CR>'},
  u = { 'n', ':Telescope buffers<CR>'},
  i = { 'n', ':Telescope keymaps<CR>'},
}

for k, v in pairs(telescopeCommands) do
  keymap(v[1], '<leader>t'..k, v[2], opts)
end

-- Comment: main key = 'c'
--
local commentCommands = {
  a = { 'n', '<cmd>lua require("Comment.api").toggle_current_linewise()<CR>' },
  o = { 'x', '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>' },
}

for k, v in pairs(commentCommands) do
  keymap(v[1], '<leader>c'..k, v[2], opts)
end

-- MarkDown
keymap('n', '<leader><leader>m', ':MarkdownPreviewToggle<CR>', opts)

-- Packer Install
keymap('n', '<leader>p', ':so<CR> :PackerSync<CR>', opts)

-- DB
keymap('n', '<leader>dbs', ':DBUI<CR>', opts)

vim.cmd[[
function! QuitFile()
  let fileName = expand('%:t:r')
  " echo fileName
   " if empty(fileName)
    " exec ':q<CR>'
   " else
    exec ':quit!<CR>'
   " endif
endfunction
]]

-- keymap('n', '<leader>q', ':exec QuitFile()<CR> ', opts)
keymap('n', '<leader>q', ':quit!', opts)

-- Terminal

keymap('n', '<C-/>', ':ToggleTerm<CR>', opts)
keymap('n', '<leader>/', ':ToggleTerm direction=float<CR>', opts)
-- keymap('n', '<leader>bo', ':ToggleTerm direction=float<CR>', opts)

keymap('n', '<leader>ra', '<Plug>RestNvim', opts)
keymap('n', '<leader>ro', '<Plug>RestNvimPreview', opts)
keymap('n', '<leader>re', '<Plug>RestNvimLast', opts)

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

  -- Selected visual mode
vim.cmd [[nnoremap <Space>v :call sml#mode_on()<CR>]]


-- -- DAP
-- keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
-- keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
-- keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
-- keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Tabs --
-- keymap("n", "<m-t>", ":tabnew %<cr>", opts)
-- keymap("n", "<m-y>", ":tabclose<cr>", opts)
-- keymap("n", "<m-\\>", ":tabonly<cr>", opts)

-- keymap("n", "<leader>a", "<cmd>Telescope resume<cr>", opts)
-- keymap("n", "<leader>a", "<cmd>Telescope commands<CR>", opts)

-- keymap("v", "//", [[y/\V<C-R>=escape(@",'/\')<CR><CR>]], opts)
-- keymap("n", "<C-p>", "<cmd>Telescope projects<cr>", opts)
-- keymap("n", "<C-t>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", opts)
--
-- vim.api.nvim_set_keymap("n", "<tab>", "<cmd>lua require('telescope').extensions.harpoon.marks(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Harpoon'})<cr>", opts)
--
-- vim.api.nvim_set_keymap("n", "<m-g>", "<cmd>Telescope git_branches<cr>", opts)
--
-- vim.cmd [[
--   function! QuickFixToggle()
--     if empty(filter(getwininfo(), 'v:val.quickfix'))
--       copen
--     else
--       cclose
--     endif
--   endfunction
-- ]]
--
-- keymap("n", "<m-q>", ":call QuickFixToggle()<cr>", opts)
--
-- keymap("n", "<c-l>", "<cmd>lua vim.lsp.codelens.run()<cr>", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
