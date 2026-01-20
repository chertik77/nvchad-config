local options = {
	formatters_by_ft = {
		lua = { 'stylua' },
		css = { 'prettierd' },
		html = { 'prettierd' },
		javascript = { 'prettierd' },
		typescript = { 'prettierd' },
		javascriptreact = { 'prettierd' },
		typescriptreact = { 'prettierd' },
		python = {
			-- To run the Ruff formatter.
			'ruff_format',
			-- To organize the imports.
			'ruff_organize_imports',
		},
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
