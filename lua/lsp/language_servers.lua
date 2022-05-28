-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
-- [Todo] make an iterative way for setting up lsp.setup {check neil vid-10}
-- python lsp
require'lspconfig'.pylsp.setup {
  capabilities = capabilities
}
-- cpp lsp
require'lspconfig'.clangd.setup{
  capabilities = capabilities
}

