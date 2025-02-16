return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			columns = { "icon" },
			keymaps = {
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<C-k>"] = false,
				["<C-j>"] = false,
				["<M-h>"] = "actions.select_split",
				["<C-c>"] = false,
				["<Esc>"] = "actions.close",
			},
			view_options = {
				show_hidden = true,
			},
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
			float = {
				-- Padding around the floating window
				padding = 2,
				max_width = 90,
				max_height = 0,
				-- border = "rounded",
				lsp_file_methods = {
					enabled = false,
				},
				win_options = {
					winblend = 0,
				},
			},
		})

		vim.keymap.set("n", "<C-e>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}
