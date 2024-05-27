local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({
  log_level = vim.log.levels.DEBUG,
})

require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'eslint',
    'rust_analyzer',
    'angularls',
    'astro',
    'cssls',
    'clangd',
    'dockerls',
    'golangci_lint_ls',
    'graphql',
    'html',
    'biome',
    'lua_ls',
    'remark_ls',
    'purescriptls',
    'sqlls',
    'svelte',
    'swift_mesonls',
    'taplo',
    'tailwindcss',
    'yamlls',
    'vimls',
    'zls'
  },
  handlers = {
    lsp_zero.default_setup,
  }
})

