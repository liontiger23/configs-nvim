require('illuminate').configure({
  providers = {
    'lsp',
    'treesitter',
    --'regex',
  },
})

-- Enable visual highlighting
--vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
--vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
--vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })
