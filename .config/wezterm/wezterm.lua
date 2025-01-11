-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- GitHub Dark
-- Catppuccin Mocha
-- SoftServer
-- Darkside
-- Andromeda
-- Arthur
-- Bluloco Dark
-- Catppuccin Frappé
-- Nord
-- SpaceGray
config.color_scheme = 'Darkside'
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 16
config.window_background_opacity = 0.97
config.term = "xterm-256color"
config.line_height = 1.2

-- and finally, return the configuration to wezterm
return config
