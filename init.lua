vim.opt.number = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true

require("config.keymaps")
require("config.lazy")
require("config.alpha")
require("config.lsp")

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sf', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

