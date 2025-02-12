return {
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			-- Basics functionality
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
				-- Skip autopair when next character is one of these
				skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
				-- Skip autopair when the cursor is inside these treesitter nodes
				skip_ts = { "string" },
				-- Skip autopair when next character is closing pair
				-- and there are more closing pairs than opening pairs
				skip_unbalanced = true,
				-- deal with markdown code blocks
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
			-- Keeping placeholder if I ever want to add other mapping
		},
	},
}
