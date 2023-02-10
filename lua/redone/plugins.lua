-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
	group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
	pattern = 'plugins.lua',
	command = 'source <afile> | PackerCompile',
})

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	use 'gruvbox-community/gruvbox'

	-- status line
	use 'nvim-lualine/lualine.nvim'

	-- treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- indentation blanking
	use 'lukas-reineke/indent-blankline.nvim'

	-- nvim tree
	use 'nvim-tree/nvim-tree.lua'
	
	-- icons
	use 'nvim-tree/nvim-web-devicons'

	use 'akinsho/toggleterm.nvim'

end)
