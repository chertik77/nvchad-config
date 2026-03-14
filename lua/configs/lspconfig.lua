local servers = {
	'html',
	'cssls',
	'ts_ls',
	'pyright',
	'ruff',
	'tailwindcss',
	'prismals',
	'yamlls',
	'bashls',
}

vim.lsp.config('cssls', {
	settings = {
		css = {
			lint = {
				unknownAtRules = 'ignore',
			},
		},
	},
})

vim.lsp.config('pyright', {
	settings = {
		pyright = {
			disableOrganizeImports = true,
		},
		python = {
			analysis = {
				typeCheckingMode = 'off',
			},
		},
	},
})

vim.lsp.config('ruff', {
	init_options = {
		settings = {
			lint = { enable = false },
			configuration = {
				['indent-width'] = 2,
				['line-length'] = 80,

				format = {
					['quote-style'] = 'single',
				},
			},
		},
	},
})

vim.lsp.enable(servers)
