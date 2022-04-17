local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("baky.lsp.lsp-installer")
require("baky.lsp.handlers").setup()
