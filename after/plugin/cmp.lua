local cmp = require('cmp')

cmp.setup({
  sources = {
    { name = "cmp_ai" },
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "luasnip" },
  },
})
