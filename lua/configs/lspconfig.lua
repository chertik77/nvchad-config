local servers = { 'html', 'cssls', 'ts_ls', 'pyright', 'ruff' }

vim.lsp.enable(servers)

vim.lsp.config('pyright', {
	settings = {
		pyright = {
			disableOrganizeImports = true,
		},
		python = {
			analysis = {
				typeCheckingMode = 'off', -- Disable type checking diagnostics
				ignore = { '*' },
			},
		},
	},
})

vim.lsp.config('ruff', {
	init_options = {
		settings = {
			configuration = {
				['line-length'] = 80,
				['indent-width'] = 2,

				format = {
					['quote-style'] = 'single',
				},
			},
		},
	},
})
