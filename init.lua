require('settings')

require('plug')

require('maps')

require('theme')

require('autocmds')

require('commands')

-- nvim --cmd 'let g:nolsp = 1'
if vim.g.nolsp == nil then
    require('lsp')
end

if vim.g.neovide then
    require('init_neovide')
end

