local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
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
    'gopls',
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
    lsp.default_setup,
  }
})

