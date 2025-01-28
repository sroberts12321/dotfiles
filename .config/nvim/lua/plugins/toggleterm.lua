return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<C-\>]], -- Ctrl+\ to toggle terminal
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
    })
  end,
}
