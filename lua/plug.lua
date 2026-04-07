-- Built-in plugins (Neovim 0.12+)
vim.cmd('packadd nvim.undotree')
vim.cmd('packadd nvim.difftool')

vim.pack.add({
    -- theme
    'https://github.com/ellisonleao/gruvbox.nvim',

    -- Autoclose brackets parenthesis
    'https://github.com/jiangmiao/auto-pairs',

    -- Quick text alignment
    'https://github.com/godlygeek/tabular',

    -- lsp
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/hrsh7th/cmp-nvim-lsp',
    'https://github.com/hrsh7th/cmp-buffer',
    'https://github.com/hrsh7th/cmp-path',
    'https://github.com/hrsh7th/cmp-cmdline',
    'https://github.com/hrsh7th/nvim-cmp',

    -- Quick edit surround
    'https://github.com/tpope/vim-surround',

    -- rainbow brackets/parenthesis
    'https://github.com/luochen1990/rainbow',

    -- git diff
    'https://github.com/airblade/vim-gitgutter',
    'https://github.com/kdheepak/lazygit.nvim',

    -- Edge.js
    'https://github.com/Yohannfra/edge.vim',

    -- git lens like
    'https://github.com/APZelos/blamer.nvim',

    -- Prisma
    'https://github.com/prisma/vim-prisma',

    -- D2 (diagrams)
    'https://github.com/terrastruct/d2-vim',

    -- Grafana alloy config files
    'https://github.com/grafana/vim-alloy',

    -- Handlebars (html template)
    'https://github.com/mustache/vim-mustache-handlebars',

    -- Wiki
    'https://github.com/vimwiki/vimwiki',

    -- color highlighter
    'https://github.com/norcalli/nvim-colorizer.lua',
})

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- snipets
Plug ('L3MON4D3/LuaSnip', {tag = 'v2.*', ['do'] = 'make install_jsregexp' })

-- python
Plug ('tell-k/vim-autopep8', { on = 'Autopep8' })

-- c/c++
Plug ('rhysd/vim-clang-format', {['for'] = {'c', 'cpp'}})
Plug ('Yohannfra/DoxygenToolkit.vim', {['for'] = {'c', 'cpp'}})

-- my plugins
Plug ('Yohannfra/Vim-Protect-Header', {on = 'Protect'})

-- icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug ('akinsho/bufferline.nvim', {tag = '*'})

-- Terraform
Plug ('hashivim/vim-terraform', { ['for'] = {'terraform'} })

vim.call('plug#end')

vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',

    -- telescope (this MUST be the last loaded plugin)
    -- (https://www.reddit.com/r/neovim/comments/13ybxld/treesitter_error_in_telescope_preview/)
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-telescope/telescope.nvim',
})

-- configure plugins
require('plugins/telescope')
require('plugins/doxygen_toolkit')
require('plugins/nvim_tree')
require('plugins/luasnip')
require('plugins/nvim-colorizer')
require('plugins/bufferline')
require('plugins/treesitter')
require('plugins/lazygit')
require('plugins/vimwiki')

vim.cmd [[
let g:Protect_Header_cpp_extern_c = 1
]]
