source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/mapping.vim
source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/nerdcommenter.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/vim-auto-save.vim

syntax on
set encoding=UTF-8
set autoindent
set smartindent
set history=5000
set clipboard=unnamedplus
set foldmethod=syntax
set foldlevel=99
"set cursorline
set exrc
set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set si
set wrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes
set timeoutlen=1000
set ttimeoutlen=50

colorscheme	gruvbox
highlight Normal guibg=none
