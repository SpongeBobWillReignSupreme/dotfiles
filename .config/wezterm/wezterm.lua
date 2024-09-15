local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

return {
    default_prog = {"wsl", "-e", "zsh"},
	default_domain = 'WSL:Arch',
    font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false }),
    font_size = 14,
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = 'Catppuccin Mocha (Gogh)',
	window_background_opacity = 0.8,
	--win32_system_backdrop = 'Acrylic',
	window_close_confirmation = "NeverPrompt",
	max_fps = 240,
	scrollback_lines = 10000,
	force_reverse_video_cursor = true,
    hide_mouse_cursor_when_typing = true,
	show_update_window = true,
}
