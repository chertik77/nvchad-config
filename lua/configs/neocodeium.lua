local cmp = require 'cmp'
local neocodeium = require 'neocodeium'

cmp.event:on('menu_opened', function()
	neocodeium.clear()
end)

neocodeium.setup {
	show_label = false,
	silent = true,
	filter = function()
		return not cmp.visible()
	end,
}

vim.keymap.set('i', '<A-f>', neocodeium.accept)
