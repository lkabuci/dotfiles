local dashboard_status_ok, dashboard = pcall(require, "dashboard")

if not dashboard_status_ok then
	print("Error in dashboard")
	return
end

dashboard.setup ({
	event = 'VimEnter',
	config = function()
	require('dashboard').setup {
			-- config
	}
	end,

})
