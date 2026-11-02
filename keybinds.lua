---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "rofi -show drun"
local mainMod = "SUPER"
local browser = "zen-browser"
local gaming = "steam"

--------------------
---- KEYBINDINGS ----
---------------------

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)

hl.bind(mainMod .. " + S", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd(gaming))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + Z", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only
-- Move focus with mainMod + arrow keys
--hl.bind(mainMod .. " + A",  hl.dsp.focus({ direction = "left" }))
--hl.bind(mainMod .. " + D", hl.dsp.focus({ direction = "right" }))
--hl.bind(mainMod .. " + W",    hl.dsp.focus({ direction = "up" }))
--hl.bind(mainMod .. " + S",  hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))

-- Keybinds to cycle within the current monitor
hl.bind("TAB + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("TAB + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("TAB + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("TAB + Q", hl.dsp.focus({ workspace = "4" }))
hl.bind("TAB + W", hl.dsp.focus({ workspace = "5" }))
hl.bind("TAB + E", hl.dsp.focus({ workspace = "6" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume control
hl.bind("TAB + A", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
-- Idea - scroll down and up to adjust volume
--hl.bind(mainMod .. " mouse.scroll")
