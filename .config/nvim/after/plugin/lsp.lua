local lsp = require("lsp-zero")

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_action = lsp.cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp_action.luasnip_jump_backward(),
    ['<C-n>'] = cmp_action.luasnip_jump_forward(),
    ['<C-Space>'] = cmp.mapping.complete()
  })
})

lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end)


lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp.default_setup,
  },
})
