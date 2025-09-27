return {
  'kevinhwang91/nvim-ufo',
  event = 'BufReadPost',
  dependencies = {
    'kevinhwang91/promise-async',
    'nvim-treesitter/nvim-treesitter',
  },
  init = function()
    vim.o.foldenable = true
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.api.nvim_set_hl(0, 'Folded', { bg = 'NONE' })
    vim.keymap.set('n', '<leader>uc', require('ufo').closeAllFolds, { desc = "Close all folds" })
    vim.keymap.set('n', '<leader>uo', require('ufo').openAllFolds, { desc = "Open all folds" })
  end,
  opts = {
    provider_selector = function()
      return { 'treesitter', 'indent' }
    end,
  },
}
