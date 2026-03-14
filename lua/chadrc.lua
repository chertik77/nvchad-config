---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = 'catppuccin',
	transparency = true,
}

M.nvdash = { load_on_startup = true }

M.ui = {
	statusline = {
		theme = 'minimal',
		separator_style = 'round',
	},
	tabufline = {
		order = { 'treeOffset', 'buffers', 'tabs' },
	},
}

return M
