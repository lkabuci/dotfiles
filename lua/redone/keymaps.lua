function map_(mode, newMap, oldMap, options)
	vim.keymap.set(mode, newMap, oldMap, options)
end

local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
-----------------------------------------------------------------

map_("n", "<leader>pv", vim.cmd.Ex, opts)									-- Explorer
map_("n", "<leader>e", ":NvimTreeToggle<CR>", opts)					-- Explorer

-- Yanking
map_("n", "<leader>y", "\"+y", opts)
map_("v", "<leader>y", "\"+y", opts)
map_("n", "<leader>Y", "\"+Y", opts)

-- Navigation between splits --
map_("n", "<C-h>", "<C-w>h", opts)
map_("n", "<C-j>", "<C-w>j", opts)
map_("n", "<C-k>", "<C-w>k", opts)
map_("n", "<C-l>", "<C-w>l", opts)

-- Resizing splits --
map_("n", "<C-Up>", ":resize +2<CR>", opts)
map_("n", "<C-Down>", ":resize -2<CR>", opts)
map_("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map_("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers -- <S- means Shift
map_("n", "<S-l>", ":bnext<CR>", opts)
map_("n", "<S-h>", ":bprevious<CR>", opts)

-- Escape Mode --
map_("i", "jj", "<ESC>", opts)

-- Visual mode
-- Stay in indent mode
map_("v", ">", ">gv", opts)
map_("v", "<", "<gv", opts)

-- Move text up and down
map_("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
map_("x", "J", ":move '>+1<CR>gv-gv", opts)
map_("x", "K", ":move '<-2<CR>gv-gv", opts)
map_("x", "<A-j>", ":move '>+1<CR>gv=gv", opts)
map_("x", "<A-k>", ":move '<-2<CR>gv=gv", opts)

-- Cursor in the middle
map_("n", "n", "nzzzv", opts)
map_("n", "N", "Nzzzv", opts)
map_("n", "<C-u>", "<C-u>zz", opts)					-- while navigating
map_("n", "<C-d>", "<C-d>zz", opts)

-- Terminal --
-- Better terminal navigation
map_("n", "<leader>t", ":terminal<CR>", opts)
map_("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
map_("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
map_("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
map_("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- rename the word you are in
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- auto save
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
