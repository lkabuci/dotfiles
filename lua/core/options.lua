local opt = vim.opt

-- File Explorer for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
opt.updatetime = 300

-- line numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.cursorline = true
opt.wrap = false
opt.whichwrap = "bs<>[]hl"							-- which "horizontal" keys are allowed to travel to prev/next line
opt.signcolumn = 'auto'
opt.scrolloff = 8									-- minimal number of screen lines to keep above and below the cursor
opt.sidescrolloff = 8								-- minimal number of screen columns either side of cursor if wrap is `false`

-- tabs, spaces and indentations
opt.tabstop = 4										-- the number of spaces to use for tab stops.
opt.shiftwidth = 4									-- the number of spaces to use for each indentation level.
opt.expandtab = false								-- Uses spaces instead of tabs for indentation.
opt.autoindent = true

-- buffers and splits
opt.hidden = true									-- switch between buffers without saving them first
opt.splitright = true								-- new split to the right
opt.splitbelow = true								-- new split below
opt.cmdheight = 4									-- more space in the neovim command line for displaying messages

-- search and highlight
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Apperence
opt.termguicolors = true
opt.background = "dark"
opt.fileencoding = "utf-8"

-- saving, backups and swaps
opt.undofile = true
opt.undodir = '/tmp/neovim'							-- to change if other systems causes issues with it
opt.backup = false
opt.swapfile = false
opt.writebackup = false								-- if a file is being edited by another program, it is not allowed to be edited
opt.linebreak = true								-- companion to wrap, don't split words


opt.iskeyword:append "-"							-- hyphenated words recognized by searches
opt.runtimepath:remove("/usr/share/vim/vimfiles")	-- separate vim plugins from neovim

