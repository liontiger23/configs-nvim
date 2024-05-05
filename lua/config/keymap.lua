---------------------------------------
-- Common keymappings

-- Map leader key
vim.g.mapleader = " "

--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines up with auto-indentation" })
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines down with auto-indentation" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv", { desc = "Move selected lines up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv", { desc = "Move selected lines down" })

-- Keep cursor position when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the center of the screen when scrolling window
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the center when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste preserving yanked buffer" })
vim.keymap.set({"n", "v"}, "<leader>c", [["_c]], { desc = "Change preserving yanked buffer" })
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "Delete preserving yanked buffer" })

-- Remap useless keybinding
vim.keymap.set("n", "Q", "<nop>")
