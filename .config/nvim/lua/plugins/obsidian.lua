return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "Exodus",
          path = "~/../mnt/c/Users/srobe_000/Documents/Exodus",
        },
      },
    },
  },
}
