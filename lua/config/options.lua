-- Leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

-- Netrw file explorer style
vim.g.netrw_liststyle = 0

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = '%s%=%{v:relnum?v:relnum:v:lnum}    '

-- Mouse support
vim.opt.mouse = 'a'

-- Don't show mode in command line (shown in statusline)
vim.opt.showmode = false

-- Sync clipboard with OS
vim.opt.clipboard = 'unnamedplus'

-- Indentation
vim.opt.breakindent = true

-- Persistent undo
vim.opt.undofile = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Sign column
vim.opt.signcolumn = 'yes'

-- Update times
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Live substitution preview
vim.opt.inccommand = 'split'

-- Cursor line highlight
vim.opt.cursorline = true

-- Keep cursor centered
vim.opt.scrolloff = 999

-- Diff fillchar
vim.opt.fillchars:append { diff = '╱' }
