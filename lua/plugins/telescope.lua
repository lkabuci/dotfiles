-- https://github.com/nvim-telescope/telescope.nvim

local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	print("Error loading telescope")
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	print("Error loading telescope actions")
	return
end

local themes_setup, themes = pcall(require, "telescope.themes")
if not themes_setup then
	print("Error loading telescope themes")
	return
end

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		mappings = {
			i = { -- Other mapping in ../core/keymaps.lua
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
	extensions = {
		["ui-select"] = {
			themes.get_dropdown({}),
		},
	},
})

telescope.load_extension("fzf")
telescope.load_extension("ui-select")

