local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local mapping = vim.api.nvim_set_keymap

--Remap space as leader key
mapping("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Easy Esc
vim.cmd [[
imap <C-c> <Esc>
]]

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
mapping("n", "<C-h>", "<C-w>h", opts)
mapping("n", "<C-j>", "<C-w>j", opts)
mapping("n", "<C-k>", "<C-w>k", opts)
mapping("n", "<C-l>", "<C-w>l", opts)

-- mapping("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
mapping("n", "<C-Up>", ":resize +2<CR>", opts)
mapping("n", "<C-Down>", ":resize -2<CR>", opts)
mapping("n", "<C-Left>", ":vertical resize -2<CR>", opts)
mapping("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
mapping("n", "<A-l>", ":bnext<CR>", opts)
mapping("n", "<A-h>", ":bprevious<CR>", opts)
mapping('n', '<c-x>', ':bd<CR>', opts)

-- Copy all
mapping('n', '<leader>Y', 'gg\"+yG', opts)


-- Write ';' and ',' in end line
mapping('n', '<leader>;', 'mzA;<Esc>`z<Left> ', opts)
mapping('n', '<leader>,', 'mzA,<Esc>`z<Left> ', opts)

-- Insert --
-- Press jk fast to enter
-- mapping("i", "jk", "<ESC>", opts)

-- Move in Insert Mode
mapping('i', '<A-k>', '<C-o>gk', opts)
mapping('i', '<A-j>', '<C-o>gj', opts)
mapping('i', '<A-h>', '<left>', opts)
mapping('i', '<A-l>', '<right>', opts)
mapping('i', '<A-w>', '<esc>wi', opts)
mapping('i', '<A-b>', '<esc>bi', opts)
mapping('i', '<A-e>', '<esc>ei', opts)

-- Visual --
-- Stay in indent mode
mapping("v", "<", "<gv", opts)
mapping("v", ">", ">gv", opts)

-- Move text up and down
mapping("v", "<A-j>", ":m .+1<CR>==", opts)
mapping("v", "<A-k>", ":m .-2<CR>==", opts)

-- hmmm
mapping("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
mapping("x", "J", ":move '>+1<CR>gv-gv", opts)
mapping("x", "K", ":move '<-2<CR>gv-gv", opts)
mapping("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
mapping("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- mapping("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- mapping("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- mapping("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- mapping("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- mapping("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
mapping("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
mapping("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)


-- Nvimtree
mapping("n", "<leader>nn", ":NvimTreeToggle<cr>", opts)

-- Comment
-- gcc = comment
