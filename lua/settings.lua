-- Set default shell
vim.opt.shell = '/bin/zsh'

-- Fold method
vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 99
vim.opt.foldlevel = 99

-- Vim delay for updating gitgutter
vim.opt.updatetime = 300

-- Number settings.
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true

-- True collor support.
vim.opt.termguicolors = true

-- Enable clipboard.

if vim.loop.os_uname().sysname == "Linux" then
    vim.opt.clipboard = 'unnamedplus'
else
    vim.opt.clipboard = 'unnamed'
end

-- Persistent undo
vim.opt.undofile = true

-- Disable beeping
vim.opt.errorbells = false
vim.opt.vb = false

-- Set file format
-- vim.opt.fileformats = 'unix'
-- vim.opt.fileformats = 'dos'

-- No swap file
vim.opt.swapfile = false

-- Set terminal's title according to file name
vim.opt.title = true

-- Enable mouse in all modes.
vim.opt.mouse = 'a'

-- UTF-8 Encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencodings = 'utf-8'

-- Enable cursor line.
vim.opt.cursorline = true

-- Autoread file, if the file is changed outside of vim, it will ask you if you Want to reload it
vim.opt.autoread = true

-- Disable default ruler (bar at the bottom)
vim.opt.ruler = true

-- always show status line and one status line for all splits
vim.opt.laststatus = 3

-- Setting colorcolumn.
vim.opt.colorcolumn = '81'

-- Set indentation stuf.
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

-- Set searching stuf.
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = false

-- For opening splits on right or bottom.
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Disable line wrapping
vim.opt.wrap = false

-- Show trailing spaces
vim.opt.listchars = 'tab:>>,trail:_'
vim.opt.list = true

-- Set undolevel to max
vim.opt.undolevels = 9999

-- Try to find open buffer before creating it
vim.opt.switchbuf = 'usetab'

-- Options for :mksession
vim.opt.sessionoptions = 'buffers,curdir,tabpages,winsize'

-- Always show tab line
vim.opt.showtabline = 2

-- Show current find and replace in a split
vim.opt.inccommand = 'split'

-- Disable modeline parsing
vim.opt.modeline = false

-- less input lags
vim.opt.ttimeoutlen = 100

-- vim.opt.path += "**"

-- enable rainbow brackets
vim.api.nvim_set_var('rainbow_active', 1)

vim.cmd [[
" Allow copy paste in neovim
map <D-v> "+p<CR>
map! <D-v> <C-R>+
tmap <D-v> <C-R>+
vmap <D-c> "+y<CR> 
]]
