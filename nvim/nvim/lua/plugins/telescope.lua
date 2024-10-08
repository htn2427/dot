return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod

		local trouble = require("trouble")
		local trouble_telescope = require("trouble.sources.telescope")

		-- or create your custom action
		local custom_actions = transform_mod({
			---@diagnostic disable-next-line: unused-local
			open_trouble_qflist = function(prompt_bufnr)
				trouble.toggle("quickfix")
			end,
		})

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-p>"] = actions.move_selection_previous, -- move to prev result
						["<C-n>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						["<C-t>"] = trouble_telescope.open,
					},
					n = {
						["q"] = actions.close,
					},
				},
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "top",
					},
				},
				sorting_strategy = "ascending",
				--- other configs
			},
		})

		telescope.load_extension("fzf")
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "ff", "<cmd>Telescope find_files <cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "fb", "<cmd>Telescope buffers <cr>", { desc = "Fuzzy find buffer files" })
		keymap.set("n", "fr", "<cmd>Telescope oldfiles <cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "fs", "<cmd>Telescope live_grep <cr>", { desc = "Find string in cwd" })
		keymap.set("n", "fc", "<cmd>Telescope grep_string <cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "ft", "<cmd>TodoTelescope <cr>", { desc = "Find todos" })
	end,
}
