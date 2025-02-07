local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- theme
Plug 'ellisonleao/gruvbox.nvim'

-- Autoclose brackets parenthesis
Plug 'jiangmiao/auto-pairs'

-- Quick text alignment
Plug 'godlygeek/tabular'

-- lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- snipets
Plug 'joereynolds/vim-minisnip'

-- Quick edit surround
Plug 'tpope/vim-surround'

-- python
Plug ('tell-k/vim-autopep8', { on = 'Autopep8' })

-- c/c++
Plug ('rhysd/vim-clang-format', {['for'] = {'c', 'cpp'}})
Plug ('Yohannfra/DoxygenToolkit.vim', {['for'] = {'c', 'cpp'}})

-- rainbow brackets/parenthesis
Plug 'luochen1990/rainbow'

-- git diff
Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.nvim'

-- my plugins
Plug 'Yohannfra/Vim-Flip'
Plug ('Yohannfra/Vim-Protect-Header', {on = 'Protect'})

-- icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug ('akinsho/bufferline.nvim', {tag = '*'})

-- git lens like
Plug 'APZelos/blamer.nvim'

-- the small floating window in the top right with the file name

Plug 'prisma/vim-prisma'

-- color highlighter
Plug 'norcalli/nvim-colorizer.lua'

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- telescope (this MUST be the last loaded plugin)
-- (https://www.reddit.com/r/neovim/comments/13ybxld/treesitter_error_in_telescope_preview/)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

vim.cmd [[
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ }
  ]]

vim.call('plug#end')

-- configure plugins
require('plugins/telescope')
require('plugins/doxygen_toolkit')
require('plugins/nvim_tree')
require('plugins/minisnip')
require('plugins/nvim-colorizer')
require('plugins/bufferline')
require('plugins/treesitter')
require('plugins/lazygit')

vim.cmd [[
let g:Protect_Header_cpp_extern_c = 1
]]
