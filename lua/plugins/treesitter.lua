require'nvim-treesitter'.setup {
    -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
    install_dir = vim.fn.stdpath('data') .. '/site'
}

local languages = {
    "c", "cmake", "cpp", "css", "bash", "dockerfile",
    "html", "make", "markdown", "lua", "vim", "query",
    "rust", "python", "typescript", "tsx", "javascript",
    "json", "prisma", "toml", "vimdoc",
}

require'nvim-treesitter'.install(languages)

vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

vim.api.nvim_create_autocmd('FileType', {
    pattern = languages,
    callback = function() vim.treesitter.start() end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = languages,
    callback = function()
        vim.treesitter.start()

        -- folding
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'

        -- indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
