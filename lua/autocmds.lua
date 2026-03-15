require 'nvchad.autocmds'

-- Trim trailing whitespace
vim.api.nvim_create_autocmd('BufWritePre', {
	command = [[%s/\s\+$//e]],
})

-- Show Nvdash when all buffers are closed
vim.api.nvim_create_autocmd('BufDelete', {
	callback = function()
		local bufs = vim.t.bufs
		if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == '' then
			vim.cmd 'Nvdash'
		end
	end,
})
