local status_ok, mason = pcall(require, 'mason')
if (not status_ok) then return end

local config_status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not config_status_ok) then return end

mason.setup {}
mason_lspconfig.setup {
  ensure_installed = {
    'tailwindcss',
    'ansiblels',
    'terraformls',
    'graphql',
    'jdtls',
    'pyright'
  },
  automatic_installation = true
}

local lspconfig_status_ok, lspconfig = pcall(require, 'lspconfig')
if (not lspconfig_status_ok) then return end

lspconfig.ansiblels.setup {}
lspconfig.terraformls.setup {}
lspconfig.graphql.setup {}
lspconfig.jdtls.setup {}
lspconfig.pyright.setup {}
