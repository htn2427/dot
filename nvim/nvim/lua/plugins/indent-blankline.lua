return {
	{
		"lukas-reineke/indent-blankline.nvim",
		---@diagnostic disable-next-line: unused-local
		config = function(_, opts)
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}

			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#C34043" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#DCA561" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#658594" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98BB6C" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#938AA9" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#A3D4D5" })
			end)

			require("ibl").setup({ indent = { highlight = highlight } })
		end,
	},
}
