local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter')
if not status_ok then
  return
end

local config_status_ok, nvim_treesitter_config = pcall(require, 'nvim-treesitter.configs')
if not config_status_ok then
  return
end

nvim_treesitter_config.setup {
  -- A list of parser names, or 'All'
  ensure_installed = {
    'bash',
    'c',
    'lua',
    'rust',
    'go',
    'json',
    'javascript',
    'typescript',
    'tsx',
    'css',
    'yaml',
    'java',
  },

  -- Install parses synchronously (only applied to `ensure_installed`
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter`
  auto_install = true,

  -- List of parsers to ignore installing (for 'all')
  ignore_install = { 'java' },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- List of language tha will be disabled
    disable = { 'rust' },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  }
}
