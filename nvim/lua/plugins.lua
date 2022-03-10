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
	use 'styled-components/vim-styled-components'
  use 'windwp/nvim-ts-autotag'

	-- Nvim Tree
	use {
	'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
}
	-- Comment
	use 'numToStr/Comment.nvim'

	-- Auto Pairs
	use 'windwp/nvim-autopairs'

	-- Indent
	use 'lukas-reineke/indent-blankline.nvim'

	-- Status Line
	use {
  'nvim-lualine/lualine.nvim',
  requires = {'kyazdani42/nvim-web-devicons', opt = true}
}

	-- Game
	use 'theprimeagen/vim-be-good'

	-- Git
	use 'tpope/vim-rhubarb'
	use 'tpope/vim-fugitive'

	-- Auto Save
	use 'Pocco81/AutoSave.nvim'

	-- Moviment writer
	use 'tpope/vim-surround'
	use 'wellle/targets.vim'

	-- Lsp
	use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
	}

	-- Coc
	-- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
	-- use 'rafcamlet/coc-nvim-lua'

  -- Completion
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  

  -- Snipets"
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind-nvim'

	-- Icons
	use {
		'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'
	}

	-- Test
	use 'vim-test/vim-test'
	use 'rcarriga/vim-ultest'

  --DB
  use 'kristijanhusak/vim-dadbod-ui'
  use 'tpope/vim-dadbod'

  -- Harpoon
  use 'ThePrimeagen/harpoon'

  -- Markdown Preview
  use 'iamcco/markdown-preview.nvim'
   -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

end)
