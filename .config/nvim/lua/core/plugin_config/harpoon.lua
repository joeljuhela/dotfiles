vim.keymap.set('n', '<leader>fp', require('harpoon.ui').toggle_quick_menu)
vim.keymap.set('n', 'z', require('harpoon.mark').add_file)
vim.keymap.set('n', '<TAB>', require('harpoon.ui').nav_next)
vim.keymap.set('n', '<S-TAB>', require('harpoon.ui').nav_prev)
