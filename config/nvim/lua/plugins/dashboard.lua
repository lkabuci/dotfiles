-- https://github.com/glepnir/dashboard-nvim

local success, dashboard = pcall(require, "dashboard")

if not success then
	print("Error loading dahsboard")
	return
end


dashboard.setup({
	theme = 'hyper',
	event = 'VimEnter',
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{
				icon = ' ',
				desc = 'Update',
				group = '@property',
				action = 'PackerSync',
				key = 'u'
			},
			{
				icon = ' ',
				icon_hl = '@variable',
				desc = 'Files',
				group = 'Label',
				action = 'Telescope find_files',
				key = 'f',
			},
			{
				desc = ' Apps',
				group = 'DiagnosticHint',
				action = 'Telescope app',
				key = 'a',
			},
			{
				desc = ' dotfiles',
				group = 'Number',
				action = 'Telescope dotfiles',
				key = 'd',
			},
		},
	},
})

