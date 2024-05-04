require('lualine').setup({
  options = {
    theme = 'catppuccin'

    -- Enabling transparency in default theme:
    -- 
    --theme = (function()
    --  local custom_theme = require('lualine.themes.auto')
    --  custom_theme.normal.c.bg = 'None'
    --  custom_theme.visual.c.bg = 'None'
    --  custom_theme.insert.c.bg = 'None'
    --  custom_theme.command.c.bg = 'None'
    --  custom_theme.inactive.c.bg = 'None'
    --  return custom_theme
    --end)
  },
  sections = { lualine_c = { "filename", "require'lsp-status'.status()" } }
})
