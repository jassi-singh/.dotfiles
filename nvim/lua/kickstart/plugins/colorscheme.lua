return {
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    priority = 1000,
    opts = {
      transparent_background = true,
    },
    init = function()
      vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
