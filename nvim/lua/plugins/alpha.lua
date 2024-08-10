return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		-- Set header
		dashboard.section.header.val = {
			[[   __       ____                       __   __]],
			[[  / /  ___ / / /__    _    _____  ____/ /__/ /]],
			[[ / _ \/ -_) / / _ \  | |/|/ / _ \/ __/ / _  / ]],
			[[/_//_/\__/_/_/\___/  |__,__/\___/_/ /_/\_,_/  ]],
		}
		-- dashboard.section.header.val = { "vim" }
		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("SPC ff", "󰱼 " .. " Find File", "<cmd>Telescope find_files initial_mode=normal<CR>"),
			dashboard.button("q", " " .. " Quit", "<cmd>qa<CR>"),
		}
		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
