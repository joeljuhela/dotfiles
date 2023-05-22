local builtin = require('telescope.builtin')

-- telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc='Find Files (from working directory)' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc='Find string in working directory' })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc='Previously opened files' })
