vim.keymap.set('n', '<leader>z', function() require('zen-mode').toggle({
    plugins = { kitty = { enabled = true }, tmux = { enabled = true } }
}) end)
