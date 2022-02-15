local lspconfig = require('lspconfig')
lspconfig.tsserver.setup{}
lspconfig.eslint.setup{}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
     virtual_text = {
       spacing = 4,
     },
    -- delay update diagnostics
    update_in_insert = true,
  }
)
