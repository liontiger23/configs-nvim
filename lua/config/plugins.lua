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

  -- Useful keymaps for common tasks like navigating to next/previous quickfix item with ]q/[q
  use 'tpope/vim-unimpaired'

  -- Automatic cd to project root
  use 'ahmedkhalf/project.nvim'

  -- Better file tree viewer than builtin netrw
  use 'nvim-tree/nvim-tree.lua'

  -- Undo tree
  use 'mbbill/undotree'

  -- Pretty status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Running snippets inside of neovim
  use {
    'michaelb/sniprun',
    run = 'sh ./install.sh'
  }

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Highlighting references
  use 'rrethy/vim-illuminate'

  -- Displaying color of corresponding RGB codes
  use 'norcalli/nvim-colorizer.lua'

  -- Fuzzy search
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- Builtin pickers, sorters and previewers
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Floating terminal support
  use 'voldikss/vim-floaterm'

  -- Git blame with commit stack support
  use 'FabijanZulj/blame.nvim'

  -- Display unstaged changes in gutter
  use 'airblade/vim-gitgutter'

  -- Colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Bootstrap LSP package
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  -- Displaying LSP status and updates
  use 'nvim-lua/lsp-status.nvim'

  -- Haskell LSP integration
  use 'mrcjkb/haskell-tools.nvim'

  -- LLM autocompletion
  use {
    'tzachar/cmp-ai',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'hrsh7th/nvim-cmp'},
    }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
