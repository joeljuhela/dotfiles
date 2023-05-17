require('lualine').setup({
    options = {
        theme = 'auto',
        globalstatus = true
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = {
            { 'diagnostics' },
            { 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 0 } },
            { 'filename', path = 1 }
        }
    }
})
