local opts = {
    noremap = true,
    silent = true
}

vim.g.mapleader = ' '

-----------------
-- Normal mode --
-----------------

-- Navigating windows
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resizing windows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)


-- Navigating buffers
vim.keymap.set('n', '<TAB>', ':bn<CR>')
vim.keymap.set('n', '<S-TAB>', ':bp<CR>')

vim.keymap.set('n', '<leader>fd', ':execute "cd ~/.config/nvim" | e init.lua <CR>', { desc='Open Neovim config' })


-- other keymaps for plugins can be found in separate config files in   
-- core/plugin_config
