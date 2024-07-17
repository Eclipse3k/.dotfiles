vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.swapfile = false
opt.scrolloff = 8

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- turn on termguicolors
opt.termguicolors = true

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard

-- split windows
opt.splitright = true
opt.splitbelow = true

-- save undo-trees in files
