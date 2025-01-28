return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      -- Basic functionality
      require("mini.basics").setup({
        mappings = {
          windows = true,
          move_with_alt = true,
        },
      })

      -- Enhanced text objects
      require("mini.ai").setup()

      -- Autopairing
      require("mini.pairs").setup({
        modes = { insert = true, command = true, terminal = false },
        -- skip autopair when next character is one of these
        skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
        -- skip autopair when the cursor is inside these treesitter nodes
        skip_ts = { "string" },
        -- skip autopair when next character is closing pair
        -- and there are more closing pairs than opening pairs
        skip_unbalanced = true,
        -- better deal with markdown code blocks
        markdown = true,
      })

      -- Surround functionality
      require("mini.surround").setup()

      -- Animated indentation guides
      require("mini.indentscope").setup({
        symbol = "│",
        options = { try_as_border = true },
      })

      -- Enhanced completion
      require("mini.completion").setup({
        window = {
          info = { height = 25, width = 80, border = "rounded" },
          signature = { height = 25, width = 80, border = "rounded" },
        },
      })
    end,
    keys = {
      -- Add other keymaps as needed
    },
  },
}
