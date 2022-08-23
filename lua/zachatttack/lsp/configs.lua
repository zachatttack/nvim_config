local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

local lspconfig = require("lspconfig")

local servers = { 
  "sumneko_lua" , 
  "ccls", 
  "gopls", 
  "pyright",
  "jdtls",
}

mason.setup()
mason_lspconfig.setup()

for _, server in pairs(servers) do

	local opts = {
		on_attach = require("zachatttack.lsp.handlers").on_attach,
		capabilities = require("zachatttack.lsp.handlers").capabilities,
	}

	local has_custom_opts, server_custom_opts = pcall(require, "zachatttack.lsp.settings." .. server)
	if has_custom_opts then
	 	opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
	end

  if server == "jdtls" then goto continue end

	lspconfig[server].setup(opts)
  ::continue::
end
