-- Pull in the wezterm API
--
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = "Catppuccin Frappe"
config.font = wezterm.font_with_fallback({
	"Monaspace Argon",
	"Fira Code",
	"DengXian",
})
config.font_size = 14

config.native_macos_fullscreen_mode = true
config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 1.0
config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
