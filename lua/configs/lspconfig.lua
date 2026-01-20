local on_attach = require('nvchad.configs.lspconfig').on_attach
local on_init = require('nvchad.configs.lspconfig').on_init
local capabilities = require('nvchad.configs.lspconfig').capabilities

local lspconfig = require 'nvchad.configs.lspconfig'

lspconfig.servers = { 'html', 'cssls', 'ts_ls', 'pyright' }

local default_servers = { 'html', 'cssls', 'ts_ls' }

for _, lsp in ipairs(default_servers) do
	vim.lsp.config(lsp, {
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	})
end

vim.lsp.config('pyright', {
	on_attach = on_attach,
	on_init = on_init,
	capabilities = capabilities,

	settings = {
		python = {
			analysis = {
				typeCheckingMode = 'off', -- Disable type checking diagnostics
			},
		},
	},
})

vim.lsp.enable 'pyright'
