local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', 'h',       api.node.navigate.parent,            opts('Parent Directory'))
  vim.keymap.set('n', 'l',       api.node.open.edit,                  opts('Open'))
end

require("nvim-tree").setup {
  on_attach = my_on_attach,
}

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<cr>')
