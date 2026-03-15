local options = {
	formatters_by_ft = {
		lua = { 'stylua' },
		css = { 'prettierd' },
		html = { 'prettierd' },
		javascript = { 'prettierd' },
		typescript = { 'prettierd' },
		javascriptreact = { 'prettierd' },
		typescriptreact = { 'prettierd' },
		json = { 'prettierd' },
		python = { ['lsp_format'] = 'first' },
		bash = { 'shfmt' },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
