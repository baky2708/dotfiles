local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("yaya.lsp.lsp-installer")
require("yaya.lsp.handlers").setup()
require "yaya.lsp.null-ls"
