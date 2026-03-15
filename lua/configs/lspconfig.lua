local servers = {
	html = {},
	ts_ls = {},
	tailwindcss = {},
	prismals = {},
	yamlls = {},
	bashls = {},

	cssls = {
		settings = {
			css = {
				lint = {
					unknownAtRules = 'ignore',
				},
			},
		},
	},

	ruff = {
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
	},

	pyright = {
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
	},
}

for name, opts in pairs(servers) do
	vim.lsp.config(name, opts)
	vim.lsp.enable(name)
end
