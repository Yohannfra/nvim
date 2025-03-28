vim.g.vimwiki_list = {
  {
    path = '~/vimwiki/',
    path_html = '~/vimwiki/html/',
  }
}

vim.g.vimwiki_global_ext = 0

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.wiki" },
  callback = function()
    vim.cmd("silent! VimwikiAll2HTML")
  end,
  group = vim.api.nvim_create_augroup("VimwikiAutoExport", { clear = true }),
})
