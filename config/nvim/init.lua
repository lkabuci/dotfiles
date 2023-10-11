-- wo Window skipped option
vim.wo.number = true
vim.wo.cursorline = true

-- Set tabs to be represented as 4 spaces
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true


local options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", options)

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- packer configuration
return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Packer

    use { "ellisonleao/gruvbox.nvim" } -- Theme

end)


