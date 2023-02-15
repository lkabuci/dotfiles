-- https://github.com/folke/which-key.nvim

local success, whichkey = pcall (require, "which-key")

if not success then
	print("Error importing whichkey modedule")
	return
end

whichkey.setup({
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end
})

