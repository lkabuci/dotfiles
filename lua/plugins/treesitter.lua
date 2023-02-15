-- https://github.com/nvim-treesitter/nvim-treesitter

local success, treesitter = pcall(require, "nvim-treesitter.configs")
if not success then
	print("Error importing treesitter")
	return
end

treesitter.setup({
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"go",
		"java",
		"javascript",
		"json",
		"lua",
		"lua",
		"markdown",
		"markdown_inline",
		"python",
		"rust",
		"tsx",
		"typescript",
		"yaml",
	}, -- one of "all" or a list of languages
	ignore_install = {
		"phpdoc"
	}, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = {
			"css"
		}, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = {
		enable = true,
		disable = {
			"python",
			"css"
		}
	},
})

