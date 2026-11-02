-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hyprctl hyprpaper wallpaper 'DP-1, ~/Photos/Wallpapers/everforest.png'")
	hl.exec_cmd("hyprctl hyprpaper wallpaper 'HDMI-A-1, ~/Photos/Wallpapers/everforest.png'")
	hl.exec_cmd("waybar")
end)
