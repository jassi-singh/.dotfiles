return {
  "ThePrimeagen/git-worktree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("git-worktree").setup({
      change_directory_command = "cd", -- default: "cd"
      update_on_change = true, -- default: true
      update_on_change_command = "e .", -- default: "e ."
      clearjumps_on_change = true, -- default: true
      autopush = false, -- default: false
    })
    
    -- Load Telescope extension
    require("telescope").load_extension("git_worktree")
    
    -- Keymaps
    vim.keymap.set("n", "<leader>gw", function() require('telescope').extensions.git_worktree.git_worktrees() end, 
      { desc = "List worktrees" })
      
    vim.keymap.set("n", "<leader>gW", function() require('telescope').extensions.git_worktree.create_git_worktree() end, 
      { desc = "Create worktree" })
  end,
}