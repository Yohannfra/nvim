-- Use `:Format` to format current buffer
vim.cmd 'command! -nargs=0 Format :call CocAction(\'format\')'

-- CoCFix
vim.cmd 'command! Fix :CocFix'
