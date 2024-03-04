local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-a>", ui.toggle_quick_menu)

vim.keymap.set("n", "<TAB>", ui.nav_next, { noremap = true })
vim.keymap.set("n", "<S-TAB>", ui.nav_prev, { noremap = true })
