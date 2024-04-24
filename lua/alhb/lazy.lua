local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) require("lazy").setup({
  {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    cmd = { 'TSUpdate' },
  },
  'tpope/vim-fugitive',
  'nvim-tree/nvim-web-devicons',
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      position = "bottom",
      height = 10,
      width = 50,
      icons = true,
      mode = "workspace_diagnostics",
      group = true,
      padding = true,
      multiline = true,
      auto_open = true,
      auto_close = true,
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  'ellisonleao/gruvbox.nvim',
  'sbdchd/neoformat',
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
})
