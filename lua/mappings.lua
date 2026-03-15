require 'nvchad.mappings'

local map = vim.keymap.set

map('n', 'ss', '<cmd>w<CR>', { desc = 'Save' })
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Nvim Tree Toggle' })
