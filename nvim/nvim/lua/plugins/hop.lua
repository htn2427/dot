return {

	"phaazon/hop.nvim",
	event = "BufRead",
	config = function()
		require("hop").setup()
		vim.api.nvim_set_keymap("n", "<leader>s", ":HopChar2<cr>", { silent = true })
		vim.api.nvim_set_keymap("n", "<leader>w", ":HopWord<cr>", { silent = true })
	end,
}
