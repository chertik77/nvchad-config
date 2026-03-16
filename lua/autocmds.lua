require 'nvchad.autocmds'

local autocmd = vim.api.nvim_create_autocmd

-- Trim trailing whitespace
autocmd('BufWritePre', { command = [[%s/\s\+$//e]] })

-- Show Nvdash when all buffers are closed
autocmd('BufDelete', {
	callback = function()
		local bufs = vim.t.bufs
		if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == '' then
			vim.cmd 'Nvdash'
		end
	end,
})

-- Auto-remove unused imports
autocmd('BufWritePre', {
	pattern = { '*.js', '*.jsx', '*.ts', '*.tsx' },
	callback = function()
		vim.lsp.buf.code_action {
			apply = true,
			context = {
				---@diagnostic disable-next-line: assign-type-mismatch
				only = { 'source.removeUnusedImports' },
				diagnostics = {},
			},
		}
	end,
})
