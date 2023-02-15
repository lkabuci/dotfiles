-- on save trim spaces and add a single line
_G.add_new_line = function()
  local n_lines = vim.api.nvim_buf_line_count(0)
  local last_nonblank = vim.fn.prevnonblank(n_lines)
  if last_nonblank <= n_lines then vim.api.nvim_buf_set_lines(0, last_nonblank, n_lines, true, { '' }) end
end

vim.cmd([[
  augroup AddNewlineOnSave
    autocmd!
    autocmd BufWritePre * lua _G.add_new_line()
  augroup END
]])

---------------------------------------------------
-- Compile when plugins.lua changed
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost ~/.config/nvim/lua/plugins.lua source <afile> | PackerCompile | PackerSync
  augroup end
]])

