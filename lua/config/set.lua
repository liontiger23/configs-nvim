vim.opt.number = true

vim.opt.encoding = "utf-8"
vim.opt.fileencodings = "utf-8,ucs-bom,cp1251,koi8-r,default,latin1"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.undofile = true -- Maintain undo history between sessions
vim.opt.backup = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Support cyrillic keyboard layout
vim.opt.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Spell languages
vim.opt.spelllang = "en_us,ru_ru"
-- Show nine spell checking candidates at most
vim.opt.spellsuggest = "best,9"
