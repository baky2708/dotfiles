call plug#begin('~/.vim/plugged')

Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdcommenter'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'theprimeagen/vim-be-good'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'theoldmoon0602/coc-plug'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug '907th/vim-auto-save'
Plug 'wellle/targets.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'BurntSushi/ripgrep'

call plug#end()

"Coc-plugins
call coc_plug#begin()
  CocPlug 'coc-fsharp'
  CocPlug 'coc-css'
  " CocPlug 'coc-eslint'
  CocPlug 'coc-html'
  CocPlug 'coc-rome'
  " CocPlug 'coc-stylelint'
  CocPlug 'coc-tsserver'
  CocPlug 'coc-json'
  CocPlug 'coc-git'
  CocPlug 'coc-snippets'
call coc_plug#end()

