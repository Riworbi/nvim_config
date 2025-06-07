-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- treesitter
	use ({
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	})

    -- colorscheme
    use { "ellisonleao/gruvbox.nvim" }


    use {'mfussenegger/nvim-jdtls'}

    -- gitSigns
    use ({
        'lewis6991/gitsigns.nvim'
    })
    
	-- undotree
	use ('mbbill/undotree')


	-- fugitive
	use ('tpope/vim-fugitive')

    use ('hrsh7th/nvim-cmp')
    use ('hrsh7th/cmp-nvim-lsp')
    use ('neovim/nvim-lspconfig')
    use ('williamboman/mason-lspconfig.nvim')
    use ('williamboman/mason.nvim')

end)


