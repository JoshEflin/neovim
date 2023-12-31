--this file can be loaded by calling 'lua require ('plugins') from your init.vim
--
--only required if packer is configured as 'opt'
vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
	--packer can manager itself
  	use 'wbthomason/packer.nvim'
    use {
      'mhartington/formatter.nvim'
    }
    use {
  	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  	  -- or                            , branch = '0.1.x',
  	  requires = { {'nvim-lua/plenary.nvim'} }
    }
 	  use({
	  	'rose-pine/neovim',
	   	as = 'rose-pine',
		  config = function ()
			vim.cmd('colorscheme rose-pine')
	  	end
  	})
 	  use({
	  	'folke/tokyonight.nvim',
	   	as = 'tokyonight',
		  config = function ()
			vim.cmd('colorscheme tokyonight')
	  	end
  	})
    use('lukas-reineke/lsp-format.nvim')
    use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  	use('nvim-treesitter/playground')
  	use('theprimeagen/harpoon')
  	use('mbbill/undotree')
	  use('tpope/vim-fugitive')
	  use{
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'hrsh7th/cmp-nvim-lua'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
      {'saadparwaiz1/cmp_luasnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)
