local fzf_lua = require('fzf-lua')
fzf_lua.setup {
  defaults = {
    formatter = "path.filename_first",
  },
  keymap = {
    fzf = {
      -- Open all matches as quickfix window
      ["ctrl-q"] = "select-all+accept",
    },
  },
  lsp = {
    includeDeclaration = false,
    winopts = {
      preview = {
        layout = "vertical",
      }
    }
  },
}

vim.keymap.set('n', '<leader>fr', fzf_lua.resume, { desc = "Resume previous fuzzy search" })
vim.keymap.set('n', '<leader>ff', fzf_lua.files, { desc = "Fuzzy search files" })
vim.keymap.set('n', '<leader>fg', fzf_lua.live_grep, { desc = "Fuzzy grep" })
vim.keymap.set('n', '<leader>fb', fzf_lua.buffers, { desc = "Fuzzy search buffers" })
vim.keymap.set('n', '<leader>fh', fzf_lua.builtin, { desc = "Fuzzy search builtin functions" })
