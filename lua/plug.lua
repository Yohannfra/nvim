local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- theme
Plug 'morhetz/gruvbox'

-- Autoclose brackets parenthesis
Plug 'jiangmiao/auto-pairs'

-- better syntax highlights
Plug 'sheerun/vim-polyglot'

-- Quick text alignment
Plug 'godlygeek/tabular'

-- lsp
Plug 'neovim/nvim-lspconfig'

-- File explorer
-- Plug 'tpope/vim-vinegar'

-- snipets
Plug 'joereynolds/vim-minisnip'

-- comments
Plug 'tpope/vim-commentary'

-- Quick edit surround
Plug 'tpope/vim-surround'

-- formaters
-- python
Plug ('tell-k/vim-autopep8', { on = 'Autopep8' })

-- c/c++
Plug ('rhysd/vim-clang-format', {['for'] = {'c', 'cpp'}})
Plug 'Yohannfra/DoxygenToolkit.vim'

Plug 'Yohannfra/soulver3.vim'

-- js / ts

-- rainbow brackets/parenthesis
Plug 'luochen1990/rainbow'

-- git diff
Plug 'airblade/vim-gitgutter'

-- my plugins
Plug 'Yohannfra/Vim-Flip'
Plug ('Yohannfra/Vim-Protect-Header', {on = 'Protect'})
Plug 'Yohannfra/Vim-Vim-Project'

-- icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

-- git lens like
Plug 'APZelos/blamer.nvim'

Plug 'b0o/incline.nvim'

Plug 'prisma/vim-prisma'

Plug 'norcalli/nvim-colorizer.lua'


vim.cmd [[
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
]]

-- telescope (this MUST be the last loaded plugin)
-- (https://www.reddit.com/r/neovim/comments/13ybxld/treesitter_error_in_telescope_preview/)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

vim.call('plug#end')

-- configure plugins
require('plugins/telescope')
require('plugins/doxygen_toolkit')
require('plugins/nvim_tree')
require('plugins/incline')
require('plugins/minisnip')
require('plugins/nvim-colorizer')
require('plugins/treesister')

vim.cmd [[
let g:Protect_Header_cpp_extern_c = 1
]]

