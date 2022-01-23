local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- theme
Plug 'morhetz/gruvbox'

-- Autoclose brackets parenthesis
Plug 'Townk/vim-autoclose'

-- telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- better syntax highlights
Plug 'sheerun/vim-polyglot'

-- coc
Plug('neoclide/coc.nvim', {branch = 'release'})

-- File explorer
Plug 'tpope/vim-vinegar'

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
Plug ('rhysd/vim-clang-format', {['for'] = 'c'})
Plug 'Yohannfra/DoxygenToolkit.vim'

-- js / ts
-- Plug ('prettier/vim-prettier', { do = 'yarn install', for = ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] })

-- rainbow brackets/parenthesis
Plug 'luochen1990/rainbow'

-- git diff
Plug 'airblade/vim-gitgutter'

-- my plugins
Plug 'Yohannfra/Vim-Flip'
Plug 'Yohannfra/Vim-Goto-Header'
Plug ('Yohannfra/Vim-Protect-Header', {on = 'Protect'})
Plug 'Yohannfra/Vim-Vim-Project'

-- icons
Plug 'kyazdani42/nvim-web-devicons'

vim.call('plug#end')

require('plugins/telescope')
