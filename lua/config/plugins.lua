----------------------------------------
-- Packer bootstrap

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

----------------------------------------

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Remember last position in opened files
  use 'farmergreg/vim-lastplace'

  -- Undo tree
  use 'mbbill/undotree'

  -- Pretty status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Highlighting references
  use 'rrethy/vim-illuminate'

  -- Fuzzy search
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)