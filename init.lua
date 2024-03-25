require('settings')

require('plug')

require('maps')

require('theme')

require('autocmds')

require('lsp')

if vim.g.neovide then
    require('init_neovide')
end

