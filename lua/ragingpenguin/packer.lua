--this file can be loaded by calling 'lua require ('plugins') from your init.vim
--
--only required if packer is configured as 'opt'
vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
	--packer can manager itself
	use 'wbthomason/packer.nvim'

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
	use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
end)
