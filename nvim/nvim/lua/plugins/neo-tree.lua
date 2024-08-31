return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = false,
			window = {
				width = 30,
				mappings = {
					["f"] = function() end,
				},
			},
			buffers = {
				follow_current_file = { enabled = true },
			},
			filesystem = {
				follow_current_file = { enabled = true },
				filtered_items = {
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						"node_modules",
					},
					never_show = {
						-- ".DS_Store",
						-- "thumbs.db",
					},
				},
			},
		})
		vim.api.nvim_set_keymap("n", "<leader>n", ":NeoTreeFloatToggle<cr>", { silent = true })
		vim.api.nvim_set_keymap("n", "<leader>e", ":NeoTreeShowToggle<cr>", { silent = true })
	end,
}
