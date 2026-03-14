local lint = require 'lint'

lint.linters_by_ft = {
	javascript = { 'eslint_d' },
	typescript = { 'eslint_d' },
	typescriptreact = { 'eslint_d' },
	javascriptreact = { 'eslint_d' },
	sh = { 'shellcheck' },
	bash = { 'shellcheck' },
	zsh = { 'shellcheck' },
}

vim.api.nvim_create_autocmd(
	{ 'BufEnter', 'BufWritePost', 'InsertLeave', 'TextChanged', 'TextChangedI' },
	{
		callback = function()
			lint.try_lint()
		end,
	}
)
