
vim.opt.clipboard = 'unnamedplus' 	-- use system clipboard
vim.opt.mouse = 'a'			-- allow mouse

-- Tab
vim.opt.tabstop = 4			-- visual tab size
vim.opt.softtabstop = 4			-- tab size in editing
vim.opt.shiftwidth = 4			-- insert 4 spaces with tab
vim.opt.expandtab = true		-- tabs are spaces

-- UI
vim.opt.number = true			-- show linenumbers
vim.opt.relativenumber = true		-- relative numbering
vim.opt.cursorline = true		-- highlight the line where cursor is
vim.opt.splitbelow = true		-- open vertical splits from bottom
vim.opt.splitright = true		-- open horizontal splits from right

-- Search
vim.opt.incsearch = true		-- search as characters are entered
vim.opt.ignorecase = true		-- by default, ignore case in search
vim.opt.smartcase = true		-- case-sensitive when uppercase is used

