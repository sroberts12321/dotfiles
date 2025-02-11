return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"javascript",
				"typescript",
				"svelte",
				"css",
				"html",
				"lua",
				"python",
				"tsx",
				"vimdoc",
				"vim",
				"bash",
			},
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			modules = {},
			sync_install = false,
			ignore_install = {},
		})
	end,
}
