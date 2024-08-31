-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font_with_fallback({
	"MesloLGS NF",
})
config.font = wezterm.font("CartographCF Nerd Font")
config.font_size = 11

config.enable_tab_bar = false
-- config.use_fancy_tab_bar = true

-- config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.75
-- config.macos_window_background_blur = 10
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.color_scheme = "Gruvbox Material (Gogh)"
config.initial_rows = 40
config.initial_cols = 150
config.warn_about_missing_glyphs = false
wezterm.on("format-window-title", function(tab, pane, tabs, panes, config)
	local zoomed = ""
	if tab.active_pane.is_zoomed then
		zoomed = "[Z] "
	end

	local index = ""
	if #tabs > 1 then
		index = string.format("[%d/%d] ", tab.tab_index + 1, #tabs)
	end

	return zoomed .. index .. tab.active_pane.title
end)
-- and finally, return the configuration to wezterm
return config
