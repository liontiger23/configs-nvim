local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "luasnip" },
  },
})
