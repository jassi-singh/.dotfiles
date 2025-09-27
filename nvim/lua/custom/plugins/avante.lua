return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false, -- Never set this value to "*"! Never!
  opts = {
    provider = 'copilot-claude-3.7',
    providers = {
      ['copilot-claude-4'] = {
        __inherited_from = 'copilot',
        model = 'claude-sonnet-4',
      },
      ['copilot-claude-3.7'] = {
        __inherited_from = 'copilot',
        model = 'claude-3.7-sonnet',
      },
      ['copilot-gemini-2-flash'] = {
        __inherited_from = 'copilot',
        model = 'gemini-2.0-flash-001',
      },
    },
    -- custom_tools = {
    --   {
    --     name = 'run vitest test', -- Unique name for the tool
    --     description = 'Run vitest unit tests and return results', -- Description shown to AI
    --     command = 'npx vitest run ', -- Shell command to execute
    --     param = { -- Input parameters (optional)
    --       type = 'table',
    --       fields = {
    --         {
    --           name = 'target',
    --           description = "file or directory to run tests on, ex: './src/tests' or './src/tests/example.test.js'",
    --           type = 'string',
    --           optional = true,
    --         },
    --       },
    --     },
    --     returns = { -- Expected return values
    --       {
    --         name = 'result',
    --         description = 'Result of the fetch',
    --         type = 'string',
    --       },
    --       {
    --         name = 'error',
    --         description = 'Error message if the fetch was not successful',
    --         type = 'string',
    --         optional = true,
    --       },
    --     },
    --     func = function(params, on_log, on_complete) -- Custom function to execute
    --       local target = params.target or ''
    --       local cmd = 'npx vitest run ' .. target
    --       local success, output = pcall(vim.fn.system, cmd)
    --
    --       if success then
    --         on_complete { result = output }
    --         on_log('Test run successfully: ' .. output)
    --       else
    --         on_log('Error running test: ' .. output)
    --         on_complete { error = output }
    --       end
    --     end,
    --   },
    -- },
  },
  keys = {
    { '<leader>ax', '<cmd>AvanteClear<cr>', desc = 'Clear Avante Chat' },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = 'make',
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'echasnovski/mini.pick', -- for file_selector provider mini.pick
    'nvim-telescope/telescope.nvim', -- for file_selector provider telescope
    'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
    'ibhagwan/fzf-lua', -- for file_selector provider fzf
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    'zbirenbaum/copilot.lua', -- for providers='copilot'
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
