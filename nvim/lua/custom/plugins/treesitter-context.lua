return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('treesitter-context').setup {
        enable = true, -- Enable this plugin (default: true)
        max_lines = 3, -- How many lines the context should occupy at max
        trim_scope = 'outer', -- Which context to show when `max_lines` is exceeded. Options: 'inner', 'outer'
        mode = 'cursor', -- Use 'cursor' for the active cursor context or 'topline' for the top of the window
        separator = nil, -- Separator for context lines
      }
    end,
  },
}
