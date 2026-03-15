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
		markdown = { 'prettierd' },
		yaml = { 'prettierd' },
		python = { ['lsp_format'] = 'first' },
		bash = { 'shfmt' },
	},

	formatters = {
		prettierd = {
			preped_args = function()
				return {
					'--single-quote',
					'--no-semi',
					'--bracket-same-line',
					'--jsx-single-quote',
					'--print-width',
					'80',
					'--trailing-comma',
					'none',
					'--arrow-parens',
					'avoid',
					'--config-precedence',
					'prefer-file',
				}
			end,
		},
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

return options
