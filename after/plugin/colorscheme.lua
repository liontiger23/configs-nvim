require("catppuccin").setup({
  flavour = "latte",
  transparent_background = true,
  integrations = {
    gitgutter = true,
    mason = true,
  }
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- Invert vim-gitgutter colors to highlight background
vim.cmd('highlight GitGutterAdd gui=reverse cterm=reverse')
vim.cmd('highlight GitGutterChange gui=reverse cterm=reverse')
vim.cmd('highlight GitGutterDelete gui=reverse cterm=reverse')
