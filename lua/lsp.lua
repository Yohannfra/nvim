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

-- Set up nvim-cmp.

local cmp = require'cmp'
cmp.setup({
    snippet = {
      expand = function(args)
        vim.snippet.expand(args.body) -- native neovim snippets (Neovim v0.10+)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
        -- ['<C-Space>'] = cmp.mapping.complete(),
        -- ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
      }, {
        { name = 'buffer' },
      })
  })

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
      }, {
        { name = 'buffer' },
      })
  })

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['pyright'].setup {
  capabilities = capabilities
}

require('lspconfig')['tsserver'].setup {
  capabilities = capabilities
}

require('lspconfig')['tailwindcss'].setup {
  capabilities = capabilities
}

require('lspconfig')['clangd'].setup {
  capabilities = capabilities
}

require('lspconfig')['rust_analyzer'].setup {
  capabilities = capabilities
}
