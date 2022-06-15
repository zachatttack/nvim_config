local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "zachatttack.lsp.configs"
require("zachatttack.lsp.handlers").setup()
require "zachatttack.lsp.null-ls"
