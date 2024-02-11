require('rose-pine').setup({
  disable_background = true,
  disable_float_background = true,
})

function ApplyTheme(schemeId)
  scheme = schemeId or "rose-pine"
  vim.cmd.colorscheme(scheme)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  })
end

ApplyTheme()

