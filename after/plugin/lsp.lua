local lsp = require('lsp-zero')

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<ENTER>"] = cmp.mapping.confirm({select = true}),
    ['<tab>'] = cmp.mapping.complete(),
})


lsp.setup()
