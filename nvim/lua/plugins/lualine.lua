return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("lualine").setup({
			options = { section_separators = "", component_separators = "", theme = "gruvbox-material" },
		})
	end,
}
