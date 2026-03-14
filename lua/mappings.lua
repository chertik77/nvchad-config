require 'nvchad.mappings'

local map = vim.keymap.set

map('n', 'ss', '<cmd>w<CR>', { desc = 'Save' })
