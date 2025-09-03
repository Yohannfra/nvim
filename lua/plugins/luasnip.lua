local ls = require("luasnip")

require("luasnip.loaders.from_snipmate").lazy_load({paths = "~/.config/nvim/snippets"})

vim.keymap.set({"i"}, "<Tab>", function() ls.expand() end, {silent = false})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump( 1) end, {silent = false})
vim.keymap.set({"i", "s"}, "<C-K>", function() ls.jump(-1) end, {silent = false})
