-- Defining alias for vim.opt.
local opt = vim.opt

-- Set default shell
opt.shell = '/bin/zsh'

-- Fold method
opt.foldmethod = 'indent'
opt.foldlevelstart = 99

-- Number settings.
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true

-- True collor support.
opt.termguicolors = true

-- Enable clipboard.
opt.clipboard = 'unnamed'

-- Persistent undo
opt.undofile = true

-- Disable beeping
opt.errorbells = false
opt.vb = false

-- Set file format
-- opt.fileformats = 'unix'
-- opt.fileformats = 'dos'

-- No swap file
opt.swapfile = false

-- Set terminal's title according to file name
opt.title = true

-- Enable mouse in all modes.
opt.mouse = 'a'

-- UTF-8 Encoding
opt.encoding = 'utf-8'
opt.fileencodings = 'utf-8'

-- Enable cursor line.
opt.cursorline = true

-- Autoread file, if the file is changed outside of vim, it will ask you if you Want to reload it
opt.autoread = true

-- Disable default ruler (bar at the bottom)
opt.ruler = true

-- always show status line
opt.laststatus = 2

-- Setting colorcolumn.
opt.colorcolumn = '81'

-- Set indentation stuf.
opt.tabstop = 4
opt.softtabstop = 0
opt.shiftwidth = 4
opt.smartindent = true
opt.expandtab = true
opt.smarttab = true
opt.autoindent = true

-- Set searching stuf.
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = false

-- For opening splits on right or bottom.
opt.splitbelow = true
opt.splitright = true

-- Disable line wrapping
opt.wrap = false

-- Show trailing spaces
opt.listchars = 'tab:>>,trail:_'
opt.list = true

-- Set undolevel to max
opt.undolevels = 9999

-- Try to find open buffer before creating it
opt.switchbuf = 'usetab'

-- Options for :mksession
opt.sessionoptions = 'buffers,curdir,tabpages,winsize'

-- Always show tab line
opt.showtabline = 2

-- Show current find and replace in a split
opt.inccommand = 'split'

-- less input lags
opt.ttimeoutlen = 100

-- opt.path += "**"

-- enable rainbow brackets
vim.api.nvim_set_var('rainbow_active', 1)
