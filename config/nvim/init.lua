-- wo Window skipped option
vim.wo.number = true
vim.wo.cursorline = true

-- Set tabs to be represented as 4 spaces
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

vim.cmd('set colorcolumn=80')


local options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", options)

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "cpp", "python", "json", "bash", "markdown", "dockerfile", "make", "cmake" },

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

}

-- packer configuration
return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Packer

    use { "ellisonleao/gruvbox.nvim" } -- Theme

    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

end)


