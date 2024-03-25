local lspconfig = require('lspconfig')

-- Python
lspconfig.pyright.setup {}

-- Typescript
lspconfig.tsserver.setup {}

-- TailwindCss
lspconfig.tailwindcss.setup{}

-- C/C++
lspconfig.clangd.setup {}

-- Rust
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)

    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
      local opts = { buffer = ev.buf }

      -- Hover
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

      -- Go to definition / declaration
      vim.keymap.set('n', 'cd', vim.lsp.buf.definition, opts)
      vim.keymap.set('n', 'cD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'ci', vim.lsp.buf.implementation, opts)

      -- List all references
      vim.keymap.set('n', 'cr', vim.lsp.buf.references, opts)

      -- Format command
      vim.api.nvim_create_user_command('Format', function()
        vim.lsp.buf.format { async = true }
      end, {})

      -- Switch for c/c++ files
      vim.keymap.set('n', 'gh', ':ClangdSwitchSourceHeader<CR>')
  end,
})
