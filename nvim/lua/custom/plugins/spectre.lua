return {
  'nvim-pack/nvim-spectre',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('spectre').setup {
      color_devicons = true,
      highlight = {
        ui = 'String',
        search = 'DiffChange',
        replace = 'DiffDelete',
      },
      mapping = {
        ['toggle_line'] = {
          map = 't',
          cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
          desc = 'toggle current item',
        },
        ['enter_file'] = {
          map = '<cr>',
          cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
          desc = 'goto current file',
        },
        ['send_to_qf'] = {
          map = 'Q',
          cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
          desc = 'send all item to quickfix',
        },
        ['replace_cmd'] = {
          map = 'c',
          cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
          desc = 'input replace command',
        },
        ['show_option_menu'] = {
          map = 'o',
          cmd = "<cmd>lua require('spectre').show_options()<CR>",
          desc = 'show option',
        },
        ['run_current_replace'] = {
          map = 'r',
          cmd = "<cmd>lua require('spectre.actions').run_current_replace()<CR>",
          desc = 'replace current line',
        },
        ['run_replace'] = {
          map = 'R',
          cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
          desc = 'replace all',
        },
        ['change_view_mode'] = {
          map = 'v',
          cmd = "<cmd>lua require('spectre').change_view()<CR>",
          desc = 'change result view mode',
        },
        ['toggle_ignore_case'] = {
          map = 'I',
          cmd = "<cmd>lua require('spectre').change_options('ignore-case')<CR>",
          desc = 'toggle ignore case',
        },
        ['toggle_ignore_hidden'] = {
          map = 'H',
          cmd = "<cmd>lua require('spectre').change_options('hidden')<CR>",
          desc = 'toggle search hidden',
        },
      },
    }

    -- Keymaps
    vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
      desc = 'Toggle Spectre',
    })
    vim.keymap.set('n', '<leader>Sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
      desc = 'Search current word',
    })
    vim.keymap.set('v', '<leader>Sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
      desc = 'Search current word',
    })
    vim.keymap.set('n', '<leader>Sf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
      desc = 'Search in current file',
    })
  end,
}

