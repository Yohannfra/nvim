-- Delete trailing whitespaces on save
-- vim.api.nvim_create_autocmd('BufWritePre', {pattern="*", command='%s/\\s\\+$//e'})

-- Comment string for asm files
vim.api.nvim_create_autocmd('FileType', {pattern="asm", command='setlocal commentstring=;\\ %s'})
vim.api.nvim_create_autocmd('FileType', {pattern="c", command='setlocal commentstring=//\\ %s'})

-- comment string for godot gdscript files
vim.api.nvim_create_autocmd('FileType', {pattern="gdscript", command='setlocal commentstring=#\\ %s'})

-- Comment string for .Xressources
vim.api.nvim_create_autocmd('FileType', {pattern="xdefaults", command='setlocal commentstring=!\\ %s'})

-- highlight yank
vim.api.nvim_create_autocmd('TextYankPost', {pattern="*",
        callback=function()
            vim.highlight.on_yank({timeout=200})
        end
    })

-- Return to last edit position when opening files
vim.cmd [[
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   execute "normal! g`\"" |
            \ endif

augroup END
]]

-- Segger embedded studio build files
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern="*.emProject", command='set filetype=xml'})

-- mjml mail template files
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern="*.mjml", command='set filetype=html'})

-- .mm is the extension for the C++ compilation unit expected by the Objective-C (macos stuff)
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern="*.mm", command='set filetype=cpp'})

-- the overlay files in Zephyr RTOS
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern="*.overlay", command='set filetype=dts'})

-- the config file for pymakr pycom
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern="pymakr.conf", command='set filetype=json'})

--- the config file in ESP_IDF
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern="sdkconfig.defaults", command='set filetype=conf'})

-- for all .env files
vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern=".env.*", command='set filetype=sh'})

-- Indent settings for Makefile / go
vim.cmd [[
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType go setlocal noexpandtab shiftwidth=4 softtabstop=0
]]

-- vim.cmd [[
-- autocmd FileType c,cpp ClangFormatAutoEnable
-- ]]
