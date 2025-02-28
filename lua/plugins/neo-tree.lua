return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { noremap = true, silent = true })

		require("neo-tree").setup({
			window = {
				position = "right",
				width = 30,
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
				window = {
					indent_width = 2,
					indent_markers = true,
				},
				default_component_configs = {
					git_status = {
						symbols = {
							added = "✚",
							modified = "",
							deleted = "✖",
							renamed = "󰁕",
							untracked = "",
							ignored = "󰯒",
							unstaged = "󱔴",
							staged = "󱔲",
							conflict = "",
						},
					},
				},
			},
		})
	end,
}
