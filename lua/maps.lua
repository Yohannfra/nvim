-- Function for make mapping easier.
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader key to space.
vim.g.mapleader = ' '

-- Clear highlights with mapping
map('n', '<Leader>m', ':match none <CR> :noh <CR>h')

-- Map leader as .
map('n', '<Leader><Leader>', '.')

-- Line navigation
vim.cmd [[
function! ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction
]]

map('v', 'L', '$')
map('n', 'L', '$')
map('n', 'H', ':call ExtendedHome()<CR>')
map('n', '0', ':call ExtendedHome()<CR>')
map('v', 'H', '0')

-- tabs navigation
map('n', 'gr', 'gT')

-- To not go back one character when exiting insert mode
map('i', '<Esc>', '<Esc>l')
map('i', '<C-c>', '<Esc>l')

-- escape with jk
map('i', 'jk', '<Esc>l')

map('n','ff', ':Telescope find_files<CR>')
map('n', 'fg', ':Telescope live_grep<CR>')

-- find and replace
map('n', '<C-g>', ':%s/')
map('x', '<C-g>', ':%s/')

-- map enter to add empty new line
map('n', '<Enter>', 'O<Esc>j')

-- for typos when pressing :
map('n', ';', ':')
map('v', ';', ':')
map('n', '"', ':')
map('n', '\';', ':')
map('n', '\':', ':')

map('n', 'J', 'j')
map('v', 'J', 'j')

-- disable help menu
map('n', '<F1>', '<nop>')
map('v', '<F1>', '<nop>')
map('n', 'q:', '<nop>')

-- Map Ctrl + s to :w
map('n', '<C-s>', ':w<CR>')
map('i', '<C-s>', '<Esc>:w<CR>')


-- a few abbrev
vim.cmd('cabbrev tn tabnew')
vim.cmd('cabbrev te tabedit')
vim.cmd('cabbrev Fix CocFix')

map('n', '\\1', '1gt')
map('n', '\\2', '2gt')
map('n', '\\3', '3gt')
map('n', '\\4', '4gt')
map('n', '\\5', '5gt')
map('n', '\\6', '6gt')
map('n', '\\7', '7gt')
map('n', '\\8', '8gt')
map('n', '\\9', '9gt')
map('n', '\\0', ':tablast<CR>')

-- increment / decrement
map('n', '+', '<C-a>')
map('n', '_', '<C-x>')

-- Increments in visual block
map('v', '+', 'g<C-a><CR>')
map('v', '<C-a>', 'g<C-a><CR>')

-- Allow to indent with tab and remove indent with shift + tab
map('n', '<Tab>', '>>_')
map('n', '<S-Tab>', '<<_')
map('i', '<S-Tab>', '<C-D>')
map('v', '<Tab>', '>gv')
map('v', '<S-Tab>', '<gv')

-- Shortcuts to navigate between buffers
map('n',  '<C-h>', '<C-W>h')
map('n',  '<C-l>', '<C-W>l')
map('n',  '<C-k>', '<C-W>k')
map('n',  '<C-j>', '<C-W>j')

-- call CocSearch
map('n', 'C', ':CocSearch<Space>')

-- Repeat last f or t
map('n', ',', ';')

-- Disable pageup and pagedown
map('n', '<PageUp>', '<nop>')
map('n', '<PageDown>', '<nop>')
map('i', '<PageUp>', '<nop>')
map('i', '<PageDown>', '<nop>')


-- Kind of find and replace
map('n', '<C-d>', '#Ncgn')
map('v', '<C-d>', 'y/<C-r>"<CR>Ncgn')

-- highlight word under cursor
map('n', 'm', ':match Error "<C-R><C-W>"<CR>')

-- coc config
vim.cmd [[
function! Cdinnewtab()
    let pos = getpos('.')
    let y = pos[1] - 1
    let x = pos[2] - 1

    execute ":tabedit % | norm" . y . "j"
    execute "norm" . x . "l"
    call CocAction('jumpDefinition')
endfunction
nnoremap <silent> <Leader>cd :call Cdinnewtab() <CR>

nmap <silent> cd <Plug>(coc-definition)
nmap <silent> cr <Plug>(coc-references)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>
]]

map('n', '<C-n>', ':NvimTreeToggle<CR>')

map('n', 'gh', ':GotoHeaderSwitch<CR>')
