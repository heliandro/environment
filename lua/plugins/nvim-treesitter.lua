local config_status_ok, nvim_treesitter_configs = pcall(require, 'nvim-treesitter.configs')
if (not config_status_ok) then return end

nvim_treesitter_configs.setup {
  highlight = {
    enable = true, -- `false` will disable the whole extension,
    disable = {}, -- List of language tha will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'bash',
    'c',
    'lua',
    'rust',
    'go',
    'json',
    'javascript',
    'typescript',
    'java',
    'tsx',
    'vue',
    'svelte',
    'html',
    'css',
    'scss',
    'yaml',
    'sql',
    'dockerfile'
  },
  -- Install parses synchronously (only applied to `ensure_installed`
  sync_install = false,
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter`
  auto_install = true,
  -- List of parsers to ignore installing (for 'all')
  ignore_install = { 'java' },
  autotag = {
    enable = true,
  }
}
