return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'
	use 'gruvbox-community/gruvbox'
	use {
	    'neovim/nvim-lspconfig',
	    'williamboman/nvim-lsp-installer',
	}
end)
