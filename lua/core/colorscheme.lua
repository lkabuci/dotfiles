-- https://github.com/gruvbox-community/gruvbox/
-- https://github.com/ellisonleao/gruvbox.nvim

local success, gruvbox = pcall(require, "gruvbox")

if not success then
	print("Colorscheme not found!")
	return
end

gruvbox.setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_signs = false,
	invert_selection = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})

