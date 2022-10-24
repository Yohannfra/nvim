local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

if vim.g.neovide then
    vim.fn.execute(":cd")
end

-- Disable tmux shortcuts
map('n', '<C-b>n', ':echo "Use alt+tab to switch to terminal"<CR>')
map('n', '<C-b>c', ':echo "Use alt+tab to switch to terminal"<CR>')
map('n', '<C-b>s', ':echo "Use alt+tab to switch to terminal"<CR>')
map('n', '<C-b>v', ':echo "Use alt+tab to switch to terminal"<CR>')
map('n', '<C-b>l', ':echo "Use alt+tab to switch to terminal"<CR>')
map('n', '<C-b>h', ':echo "Use alt+tab to switch to terminal"<CR>')

vim.opt.guifont = { "JetBrainsMono Nerd Font Mono", "h13" }
