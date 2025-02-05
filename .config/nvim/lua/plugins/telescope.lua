return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-o>", builtin.find_files, { desc = "Open File" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find Grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffer" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
      vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
