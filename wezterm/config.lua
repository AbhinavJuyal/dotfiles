local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	default_cursor_style = "SteadyUnderline",
	color_scheme = "Vs Code Dark+ (Gogh)",
	font = wezterm.font("JetBrains Mono"),
	default_prog = { "/usr/bin/fish" },
	background = {
		{
			source = {
				File = "/usr/share/backgrounds/ubuntu-wallpaper-d.png",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.25,
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.55,
		},
	},
	window_padding = {
		left = 3,
		right = 3,
		top = 0,
		bottom = 0,
	},
}

return config
