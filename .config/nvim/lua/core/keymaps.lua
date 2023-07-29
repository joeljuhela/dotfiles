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

vim.keymap.set('n', '<leader>fd', '<cmd>execute "cd ~/.config/nvim" | e init.lua <CR>', { desc='Open Neovim config' })

-------------------
-- Miscellanious --
-------------------

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- clear hlsearch when by pressing esc
vim.keymap.set('n', '<esc>', '<cmd>noh<CR><esc>')
vim.keymap.set('i', '<esc>', '<cmd>noh<CR><esc>')

-- select all lines in a file
vim.keymap.set("n", '<leader>A', 'ggVG', { desc = "Select all" })
-- other keymaps for plugins can be found in separate config files in   
-- core/plugin_config
