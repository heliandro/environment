local status_ok, nvim_lspconfig = pcall(require, 'lspconfig')
if (not status_ok) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre * lua vim.lsp.buf.format { async = false }]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- Typscript configuration
-- needs typescript-language-server | npm i -g typescript-language-server typescript
nvim_lspconfig.tsserver.setup {
  on_attach = on_attach,
  filetypes = {
    'javascript', 'javascriptreact', 'javascript.jsx',
    'typescript', 'typescriptreact', 'typescript.tsx'
  },
  cmd = { 'typescript-language-server', '--stdio' }
}

-- Lua configuration
-- needs lua-language-server | brew install lua-language-server
nvim_lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the vim globals
        globals = { 'vim' }
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file('', true)
      }
    }
  }
}

-- Go configuration
-- needs:
--  go install github.com/nametake/golangci-lint-langserver@latest
--  go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
nvim_lspconfig.golangci_lint_ls.setup {
  on_attach = on_attach,
  filetypes = { 'go', 'gomod' },
  cmd = { 'golangci-lint-langserver' }
}

-- Bash configuration
-- needs bash-language-server | npm i -g bash-language-server
nvim_lspconfig.bashls.setup {
  on_attach = on_attach,
  filetypes = { 'sh' },
  cmd = { 'bash-language-server', 'start' }
}
