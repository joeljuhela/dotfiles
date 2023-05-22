local cmdline = require('fine-cmdline')

cmdline.setup({
    cmdline = {
        prompt = ' > '
    },
    popup = {
        border = {
            text = {
                top = ' Cmd ',
                top_align = 'center'
            }
        },
        win_options = {
            winhighlight = 'Normal:Normal,FloatBorder:SpecialChar'
        }
    }
})

-- Use fine-cmdline for commands
-- This is a tad risky as if this conf breaks, there
-- is no way for quitting, saving, etc. :)
vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
