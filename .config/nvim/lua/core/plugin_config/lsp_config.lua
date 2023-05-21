require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
        'pylsp'
    }
})

local lsp_attach = function(_, _)
    -- custom keybinds
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Kudos for Sampo Rapeli, this is taken from his dotfiles, check: https://github.com/samporapeli/dotfiles
local lspconfig = require('lspconfig')
for _, server_name in ipairs(require('mason-lspconfig').get_installed_servers()) do
    lspconfig[server_name].setup({
        on_attach = lsp_attach,
        capabilities = capabilities
    })
end

