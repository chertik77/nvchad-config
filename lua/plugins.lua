return {
	{
		'stevearc/conform.nvim',
		event = 'BufWritePre',
		opts = require 'configs.conform',
	},
	{
		'neovim/nvim-lspconfig',
		event = { 'BufReadPre', 'BufNewFile' },
		config = function()
			require('nvchad.configs.lspconfig').defaults()
			require 'configs.lspconfig'
		end,
	},
	{
		'stevearc/dressing.nvim',
		lazy = false,
		opts = {},
	},
	{
		'mfussenegger/nvim-lint',
		event = { 'BufReadPre', 'BufNewFile' },
		config = function()
			require 'configs.lint'
		end,
	},
	{
		'nvim-treesitter/nvim-treesitter',
		opts = {
			ensure_installed = {
				'html',
				'css',
				'javascript',
				'typescript',
				'python',
				'json',
				'markdown',
			},
		},
	},
	{
		'windwp/nvim-ts-autotag',
		event = 'VeryLazy',
		config = function()
			require('nvim-ts-autotag').setup()
		end,
	},
	{
		'max397574/better-escape.nvim',
		event = 'InsertEnter',
		config = function()
			require('better_escape').setup()
		end,
	},
	{
		'christoomey/vim-tmux-navigator',
		event = 'VeryLazy',
		cmd = {
			'TmuxNavigateLeft',
			'TmuxNavigateDown',
			'TmuxNavigateUp',
			'TmuxNavigateRight',
			'TmuxNavigatePrevious',
			'TmuxNavigatorProcessList',
		},
		keys = {
			{ '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
			{ '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
			{ '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
			{ '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
			{ '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
		},
	},
}
