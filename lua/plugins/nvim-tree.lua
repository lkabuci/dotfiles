-- https://github.com/nvim-tree/nvim-tree.lua
local success, nvim_tree = pcall(require, "nvim-tree")

if not success then
	print("Error imprting nvim-tree module")
	return
end

nvim_tree.setup({
	view = {
		width = 30,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

