require 'nvchad.mappings'

local map = vim.keymap.set

map('n', 'ss', '<cmd>w<CR>', { desc = 'Save' })
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Nvim Tree Toggle' })

map('n', '<leader>+', '<C-a>', { desc = 'Increment number' })
map('n', '<leader>-', '<C-x>', { desc = 'Decrement number' })

map('n', 'gl', vim.diagnostic.open_float)
