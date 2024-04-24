require('mason').setup({
  log_level = vim.log.levels.DEBUG,
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

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
})

