return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'
	-- Color Scheme
	use 'gruvbox-community/gruvbox'
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
			requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
}
	-- Nvim TreeSitter
	use 'nvim-treesitter/nvim-treesitter'
	-- Nvim Tree
	use {
	'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require'nvim-tree'.setup {} end
}
	-- Comment
	use 'numToStr/Comment.nvim'
	-- Auto Pairs
	use 'windwp/nvim-autopairs'
	-- Indent
	--use 'glepnir/indent-guides.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	-- Status Line
	use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
	-- Linter
	use 'dense-analysis/ale'
	-- use 'mfussenegger/nvim-lint'
	-- Game
	use 'theprimeagen/vim-be-good'
	-- Git
	use 'tpope/vim-rhubarb'
	use 'tpope/vim-fugitive'
	use 'Pocco81/AutoSave.nvim'
	use 'tpope/vim-surround'
	use 'wellle/targets.vim'

	-- Lsp
	use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
	use 'hrsh7th/nvim-cmp',
	use 'hrsh7th/cmp-nvim-lsp',
	use 'hrsh7th/cmp-buffer',
	use 'hrsh7th/cmp-path',
	use 'hrsh7th/cmp-cmdline',
	use 'saadparwaiz1/cmp_luasnip',
	use 'L3MON4D3/LuaSnip',
	use 'rafamadriz/friendly-snippets',
	use 'ray-x/lsp_signature.nvim',
	use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'},
	use 'onsails/lspkind-nvim',
		-- 'jose-elias-alvarez/null-ls.nvim',
		-- 'jose-elias-alvarez/nvim-lsp-ts-utils',
	}
	-- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
	-- use 'rafcamlet/coc-nvim-lua'
	use 'sheerun/vim-polyglot'
	use {
		'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'
	}

	-- use 'baky2708/nvimplugin'
	-- use 'rafcamlet/nvim-whid'
	-- Typewriter colorscheme
	-- use 'logico/typewriter-vim'
	-- use 'skywind3000/vim-keysound'
	-- use 'cknadler/vim-anywhere'
	-- use {"ellisonleao/glow.nvim"}
end)
