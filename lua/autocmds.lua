-- Strip whitespace when save
vim.cmd('autocmd BufWritePre * %s/\\s\\+$//e')

-- Comment string for asm files
vim.cmd('autocmd FileType asm setlocal commentstring=;\\ %s')

-- Comment string for .Xressources
vim.cmd('autocmd FileType xdefaults setlocal commentstring=!\\ %s')

-- Highlight _t in c and in cpp
vim.cmd [[
augroup highlight_t_in_c
    autocmd!
    autocmd Syntax c,cpp syntax match cStructure /\w*_t\s/
    autocmd Syntax c,cpp syntax match cStructure /\w*_t;/
    autocmd Syntax c,cpp syntax match cStructure /\w*_t)/

    autocmd Syntax c,cpp syntax match cStructure /\w*_e\s/
    autocmd Syntax c,cpp syntax match cStructure /\w*_e;/
    autocmd Syntax c,cpp syntax match cStructure /\w*_e)/

     autocmd Syntax c,cpp syntax match cType /u8/
     autocmd Syntax c,cpp syntax match cType /i8/
     autocmd Syntax c,cpp syntax match cType /u16/
     autocmd Syntax c,cpp syntax match cType /i16/
     autocmd Syntax c,cpp syntax match cType /u32/
     autocmd Syntax c,cpp syntax match cType /i32/
     autocmd Syntax c,cpp syntax match cType /u64/
     autocmd Syntax c,cpp syntax match cType /i64/
     autocmd Syntax c,cpp syntax match cType /f32/
     autocmd Syntax c,cpp syntax match cType /f64/
augroup end
]]

-- highlight yank
 vim.cmd('autocmd TextYankPost * silent! lua vim.highlight.on_yank {timeout=200}')

-- Return to last edit position when opening files
vim.cmd [[
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   execute "normal! g`\"" |
            \ endif

augroup END
]]

-- a few syntax
vim.cmd [[
autocmd BufNewFile,BufRead *.emProject set filetype=html
autocmd BufNewFile,BufRead *.overlay set filetype=dts
autocmd BufNewFile,BufRead *.csv set filetype=text
autocmd BufNewFile,BufRead pymakr.conf set filetype=json
autocmd BufNewFile,BufRead sdkconfig.defaults set filetype=conf
]]

-- Indent settings for Makefile / go
vim.cmd [[
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType go setlocal noexpandtab shiftwidth=4 softtabstop=0
]]

-- vim.cmd [[
-- autocmd FileType c,cpp ClangFormatAutoEnable
-- ]]
