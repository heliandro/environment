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

return require('packer').startup(function(use)
  -- Packer can manages itself
  use 'wbthomason/packer.nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'

  -- Formatters
  use 'sbdchd/neoformat'

  -- Languages servers | lsp
  use 'neovim/nvim-lspconfig'
  -- need:
  --   npm i -g pyright
  --   go install github.com/nametake/golangci-lint-langserver@latest
  --   go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
  use 'ray-x/lsp_signature.nvim'

  -- Languages Support
  use 'vim-crystal/vim-crystal'

  -- Linters
  --use 'neomake/neomake'

  -- Syntax
  -- Smart syntax highlight | highlighting: JS, GO, Lua...
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Search
  -- Fuzzy Finder / Telescope | need 'ripgrep' | sudo apt install ripgrep
  use { 
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
  }
  
  -- GIT | need 'lazygit' | brew install lazygit
  --

  -- Themes
  use 'mhartington/oceanic-next'
  use 'ellisonleao/gruvbox.nvim'

  -- UI
  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  -- Explorer / File Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- Tabs / Tab File on top
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  -- Status Line / Info Bottom Bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } 
  }
  -- Whichkey - bottom bar to show leader keymaps
  use 'folke/which-key.nvim'
  -- Terminal
  use 'akinsho/toggleterm.nvim'

  -- Tools
  -- close buffers/tabs without breaking layout of nvim-tree
  use 'moll/vim-bbye'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
