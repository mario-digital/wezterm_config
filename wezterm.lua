-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS NF")
config.font_size = 14.0
config.color_scheme = "Dracula"

-- Tab bar settings
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "RESIZE"

config.window_padding = {
  top = 20,
}

-- Key bindings for splitting panes
config.keys = {
  -- Split pane horizontally (side by side)
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Split pane vertically (top/bottom)
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Close current pane
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  -- Navigate between panes
  {
    key = '[',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Prev',
  },
  {
    key = ']',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Next',
  },
  -- Create new window
  {
    key = 'n',
    mods = 'CMD',
    action = wezterm.action.SpawnWindow,
  },
}

-- Make new instances spawn in new windows (not tabs)
config.prefer_to_spawn_tabs = false

-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 10

return config 


-- This is the default config for the wezterm API.
--
-- The default config is defined here:
-- https://github.com/wez/wezterm/blob/master/wezterm.lua
--
-- You can override the default config by defining a table with the same name as the
-- config you want to override.