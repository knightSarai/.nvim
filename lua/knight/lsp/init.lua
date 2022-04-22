local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("knight.lsp.lsp-installer")
require("knight.lsp.handlers").setup()
