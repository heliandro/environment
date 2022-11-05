local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manages itself
  use 'wbthomason/packer.nvim'


  -- Languages servers | LSP
  -- need:
  --  nodejs v16+
  --  npm i -g pyright
  --  npm i -g typescript-language-server typescript
  --  npm i -g bash-language-server
  --  brew install lua-language-server
  --  go install github.com/nametake/golangci-lint-langserver@latest
  --  go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
  use 'neovim/nvim-lspconfig' -- LSP
  -- use 'ray-x/lsp_signature.nvim'
  -- LSP UIs
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main'
  }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Formatters
  use 'sbdchd/neoformat'
  -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Prettier plugin for Neovim built-in LSP Client
  -- needs: prettierd | npm i -g @fsouza/prettierd
  use 'MunifTanjim/prettier.nvim'

  -- Autocomplete
  --use 'hrsh7th/nvim-compe'
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim built-in LSP
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffers
  use 'hrsh7th/cmp-path' -- nvim-cmp source for path
  use 'hrsh7th/cmp-cmdline' -- nvim-cmp source for cmdlines
  use 'hrsh7th/nvim-cmp' -- Completion

  -- Snippets
  use 'L3MON4D3/LuaSnip' -- snippets

  -- Autotag and autopair
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Languages Support
  -- use 'vim-crystal/vim-crystal'

  -- Linters
  --use 'neomake/neomake'

  -- Syntax
  -- Smart syntax highlight | highlighting: JS, GO, Lua...
  -- needs: tree-sitter | brew install tree-sitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Search
  -- need:
  --    'ripgrep' | sudo apt install ripgrep
  -- Fuzzy Finder / Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' }
  }

  -- GIT | need 'lazygit' | brew install lazygit
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  -- Themes
  use 'mhartington/oceanic-next'
  use 'ellisonleao/gruvbox.nvim'
  use 'folke/tokyonight.nvim'

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
  -- need:
  --    'ripgrep' | sudo apt install ripgrep
  --    'ncdu' | brew install ncdu
  --    'htop' | sudo apt install htop
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
