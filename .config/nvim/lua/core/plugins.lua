-- Install Packer automatically if it's not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

-- Reload conf if we modify plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Plugins
return require('packer').startup(function(use)
    -- Load packer
    use 'wbthomason/packer.nvim'

    use 'nvim-tree/nvim-tree.lua'                   -- File browser
    use 'nvim-tree/nvim-web-devicons'               -- Icons
    use 'nvim-lualine/lualine.nvim'                 -- Statusline
    use { 'catppuccin/nvim', as = 'catppuccin' }    -- Theme
    use {                                           -- Floating command prompt
        'VonHeikemen/fine-cmdline.nvim',
        requires = { 'MunifTanjim/nui.nvim' }
    }
    use 'echasnovski/mini.bufremove'                -- Keep layout when removing buffers
    use {                                           -- Tabs
        'akinsho/bufferline.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use 'lukas-reineke/indent-blankline.nvim'       -- Indentation guide
    use {                                           -- Gitsigns
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    use {                                           -- Fuzzy finding
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires= { {'nvim-lua/plenary.nvim'} }
    }
    use {                                           -- Treesitter (syntax highlighting)
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {                                           -- LSP
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    }
    use 'hrsh7th/nvim-cmp'                          -- Autocomplete
    use 'hrsh7th/cmp-nvim-lsp'                      -- Autocomplete
    use 'L3MON4D3/LuaSnip'                          -- Snippets
    use 'jiangmiao/auto-pairs'                      -- Autoclose brackets, quotes etc.
    use 'numToStr/Comment.nvim'                     -- Commenting
    use {
        'folke/which-key.nvim',
        config = function ()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require('which-key').setup()
        end
    }
    use {
        'glepnir/dashboard-nvim',                   -- Dashboard
        event = 'VimEnter',
        config = function() require('dashboard').setup({
            theme = 'doom',
            config = {                              -- I wish to move this to another file at some point
                week_header = {
                    enable = true
                },
                center = {
                    {
                        desc = 'Find Files',
                        key = 'f',
                        key_hl = 'Number',
                        action = 'Telescope find_files'
                    },
                    {
                        desc = 'Recent Files',
                        key = 'r',
                        key_hl = 'Number',
                        action = 'Telescope oldfiles'
                    },
                    {
                        desc = 'Open Neovim config',
                        key = 'd',
                        key_hl = 'Number',
                        action = function ()
                           vim.cmd('execute "cd ~/.config/nvim | e init.lua"')
                           vim.cmd('NvimTreeFindFile!')
                        end
                    }
                }
            }
        })
        end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)

