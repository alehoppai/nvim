-- require('rose-pine').setup({
--   disable_background = true,
--   disable_float_background = true,
-- })
-- 
-- function ApplyTheme(schemeId)
--   scheme = schemeId or "rose-pine"
--   vim.cmd.colorscheme(scheme)
-- 
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--   vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "*",
--     callback = function()
--       vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     end,
--   })
-- end
-- 
-- ApplyTheme()

-- Default options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")

