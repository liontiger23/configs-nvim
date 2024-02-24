local fzf_lua = require('fzf-lua')
fzf_lua.setup()

vim.keymap.set('n', '<leader>ff', fzf_lua.files, { desc = "Fuzzy search files" })
vim.keymap.set('n', '<leader>fg', fzf_lua.live_grep, { desc = "Fuzzy grep" })
vim.keymap.set('n', '<leader>fb', fzf_lua.buffers, { desc = "Fuzzy search buffers" })
vim.keymap.set('n', '<leader>fh', fzf_lua.builtin, { desc = "Fuzzy search builtin functions" })
