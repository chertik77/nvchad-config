require 'nvchad.autocmds'

-- Trim trailing whitespace
vim.api.nvim_create_autocmd('BufWritePre', {
	command = [[%s/\s\+$//e]],
})

-- Organize imports on save
vim.api.nvim_create_autocmd('BufWritePre', {
	callback = function()
		vim.lsp.buf.code_action {
			context = {
				only = { 'source.organizeImports' },
				diagnostics = vim.diagnostic.get(0),
			},
			apply = true,
		}
	end,
})
