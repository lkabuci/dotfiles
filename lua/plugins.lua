-- https://github.com/wbthomason/packer.nvim

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

vim.api.nvim_set_keymap("n", "<space>ss", ":PackerSync <CR>", {silent = true})


local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- Essensial
	use 'nvim-lua/plenary.nvim'

	-- Apperence
	use 'nvim-tree/nvim-web-devicons'
	use 'glepnir/dashboard-nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/bufferline.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'nvim-treesitter/nvim-treesitter'

	-- Telescope
	use {'nvim-telescope/telescope.nvim', tag = '0.1.1'}
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
	use { "nvim-telescope/telescope-ui-select.nvim" }
	

	if packer_bootstrap then
		require('packer').sync()
	end
end)

