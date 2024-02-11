local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
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
    -- 'asm_lsp',
    -- 'clangd',
    -- 'cmake',
    'cssls',
    -- 'denols',
    'dockerls',
    'graphql',
    'golangci_lint_ls',
    'gopls',
    'html',
    'biome',
    'lua_ls',
    'remark_ls',
    'purescriptls',
    -- 'sourcery', -- python
    'sqlls',
    'svelte',
    'taplo',
    'tailwindcss',
    'yamlls',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

