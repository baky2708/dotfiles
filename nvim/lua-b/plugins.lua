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
  use "rafamadriz/friendly-snippets"
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind-nvim'

	-- Icons
	use {
		'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'
	}

	-- Test
	use 'vim-test/vim-test'
	-- use 'rcarriga/vim-ultest'

  --DB
  use 'kristijanhusak/vim-dadbod-ui'
  use 'tpope/vim-dadbod'

  -- Harpoon
  use 'ThePrimeagen/harpoon'

  -- Markdown Preview
 use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}

use { 'thibthib18/mongo-nvim', rocks = {'lua-mongo'}, config=function()
  require 'mongo-nvim'.setup({})
end
}

  use {
  "NTBBloodbath/rest.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      -- Open request results in a horizontal split
      result_split_horizontal = false,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = false,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
    })
  end

}
  use 'tree-sitter/tree-sitter-json'
  -- Java
  use 'mfussenegger/nvim-jdtls'
  -- use 'mfussenegger/nvim-dap'
  -- use 'vim-syntastic/syntastic'

  use 'dhruvasagar/vim-zoom'

end)

	-- use 'styled-components/vim-styled-components'
 --  use 'windwp/nvim-ts-autotag'
 --  use 'kyazdani42/nvim-web-devicons'
	-- use 'theprimeagen/vim-be-good'
	-- use 'tpope/vim-rhubarb'
	-- use 'tpope/vim-fugitive'
	-- use 'Pocco81/AutoSave.nvim'
	-- use 'tpope/vim-surround'
	-- use 'wellle/targets.vim'
 --  use 'L3MON4D3/LuaSnip'
 --  use "rafamadriz/friendly-snippets"
 --  use 'saadparwaiz1/cmp_luasnip'
 --  use 'onsails/lspkind-nvim'
	-- use 'vim-test/vim-test'
 --  use 'kristijanhusak/vim-dadbod-ui'
 --  use 'tpope/vim-dadbod'
 --  use 'ThePrimeagen/harpoon'
 --  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
 --  use { 'thibthib18/mongo-nvim'
 --  use {
 --  "NTBBloodbath/rest.nvim",
 --  use 'tree-sitter/tree-sitter-json'
