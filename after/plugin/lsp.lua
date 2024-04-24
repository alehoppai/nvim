local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'rust_analyzer',
    'angularls',
    'astro',
    'cssls',
    'dockerls',
    'graphql',
    'html',
    'biome',
    'lua_ls',
    'remark_ls',
    'purescriptls',
    'sqlls',
    'svelte',
    'taplo',
    'tailwindcss',
    'yamlls',
    'vimls'
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

