local header_status_ok, header = pcall (require, 'header42')
if not header_status_ok then
	print("Error in ft_header")
	return 
end

header.setup({
	login = "relkabou",
	email = "relkabou@student.1337.ma",
})


