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

	-- treesitter
	use 'nvim-treesitter/nvim-treesitter'

	-- indentation blanking
	use 'lukas-reineke/indent-blankline.nvim'

	-- icons
	use 'nvim-tree/nvim-web-devicons'

	-- status line
	use 'nvim-lualine/lualine.nvim'

	-- nvim tree
	use {'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons'}

	-- Git
	use 'jesseduffield/lazygit'

	-- Terminal
	use 'akinsho/toggleterm.nvim'

	-- BUffer line
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	-- autopairs
	use 'windwp/nvim-autopairs'

	-- cmp plugins
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions

	-- Dashboard
	use {'glepnir/dashboard-nvim', requires = 'nvim-tree/nvim-web-devicons'}

	-- 42 Header
	use 'vinicius507/header42.nvim'

	-- Git
	use "lewis6991/gitsigns.nvim"

end)
