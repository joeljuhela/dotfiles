local bufremove = require('mini.bufremove')

bufremove.setup()

-- remove buffer
vim.keymap.set('n', '<leader>bd', function () bufremove.delete(0, false) end)
-- remove buffer (force)
vim.keymap.set('n', '<leader>bD', function () bufremove.delete(0, true) end)
