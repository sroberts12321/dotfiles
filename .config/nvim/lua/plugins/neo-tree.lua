return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		window = {
			width = 25,
		},
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
			},
		},
	},
	keys = {
		{ "<C-n>", ":Neotree toggle=true<CR>" },
	},
}
