vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.encoding = "utf-8"
vim.opt.fileencodings = "utf-8,ucs-bom,cp1251,koi8-r,default,latin1"

-- Disable forced default indentation of 4 spaces in markdown files
vim.g.markdown_recommended_style = 0

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.undofile = true -- Maintain undo history between sessions
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep some amount of lines between cursor and edges when scrolling
vim.opt.scrolloff = 8

-- Support cyrillic keyboard layout
vim.opt.langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Spell languages
vim.opt.spelllang = "en_us,ru_ru"
-- Show nine spell checking candidates at most
vim.opt.spellsuggest = "best,9"

-- Disable builtin file tree viewer
-- (replaced with nvim-tree plugin instead)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Reduce update time to make editor more responsive
vim.opt.updatetime = 100

-- Disable tab expansion in gitconfig and makefile files
vim.cmd([[autocmd FileType gitconfig,makefile setlocal expandtab!]])

-- Treat literate haskell files as markdown (but still run language server for lhaskell)
vim.cmd([[autocmd FileType lhaskell set filetype=markdown]])

-- Keep "bird-style" indentation when writing haskell code snippets
-- and in markdown in general
vim.cmd([[autocmd FileType lhaskell,markdown set formatoptions+=ro]])
