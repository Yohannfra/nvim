local ts_filetypes = {
        "c",
        "cmake",
        "cpp",
        "css",
        "bash",
        "html",
        "make",
        "markdown",
        "lua",
        "vim",
        "query",
        "rust",
        "python",
        "typescript",
        "tsx",
        "javascript",
        "jsx",
        "json",
        "prisma",
        "toml",
        "vimdoc",
}

require'nvim-treesitter'.setup ({})

require'nvim-treesitter'.install(ts_filetypes):wait(300000)

vim.api.nvim_create_autocmd('FileType', {
  pattern = ts_filetypes,
  callback = function()
      vim.treesitter.start()

      vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.wo[0][0].foldmethod = 'expr'
  end,
})
