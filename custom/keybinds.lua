hl.bind("CTRL+SUPER+ALT+Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), {description = "Edit user keybinds"} )
hl.bind("SUPER + escape", hl.dsp.global("quickshell:settingsToggle"), {description = "Toggle settings"})

local ids = "~/.config/hypr/custom/scripts/infinite-desktop"

hl.bind("SUPER + ALT + Z", hl.dsp.focus({ workspace = "-1" }), {description = "ID: Workspace prev"})
hl.bind("SUPER + ALT + X", hl.dsp.focus({ workspace = "+1" }), {description = "ID: Workspace next"})
hl.bind("SUPER + ALT + SHIFT + Z", hl.dsp.window.move({ workspace = "-1" }), {description = "ID: Move window to prev workspace"})
hl.bind("SUPER + ALT + SHIFT + X", hl.dsp.window.move({ workspace = "+1" }), {description = "ID: Move window to next workspace"})

hl.bind("SUPER + Y", hl.dsp.exec_cmd("python3 " .. ids .. "/floating_tile_toggle.py"), {description = "ID: Toggle float/tile all"})

hl.bind("SUPER + left",  hl.dsp.exec_cmd("python3 " .. ids .. "/navigate_windows.py left"),  {description = "ID: Focus window left"})
hl.bind("SUPER + right", hl.dsp.exec_cmd("python3 " .. ids .. "/navigate_windows.py right"), {description = "ID: Focus window right"})
hl.bind("SUPER + up",    hl.dsp.exec_cmd("python3 " .. ids .. "/navigate_windows.py up"),    {description = "ID: Focus window up"})
hl.bind("SUPER + down",  hl.dsp.exec_cmd("python3 " .. ids .. "/navigate_windows.py down"),  {description = "ID: Focus window down"})

hl.bind("SUPER + ALT + SHIFT + left",  hl.dsp.exec_cmd("python3 " .. ids .. "/move_window_tiled.py left"),  {description = "ID: Move tiled window left"})
hl.bind("SUPER + ALT + SHIFT + right", hl.dsp.exec_cmd("python3 " .. ids .. "/move_window_tiled.py right"), {description = "ID: Move tiled window right"})
hl.bind("SUPER + ALT + SHIFT + up",    hl.dsp.exec_cmd("python3 " .. ids .. "/move_window_tiled.py up"),    {description = "ID: Move tiled window up"})
hl.bind("SUPER + ALT + SHIFT + down",  hl.dsp.exec_cmd("python3 " .. ids .. "/move_window_tiled.py down"),  {description = "ID: Move tiled window down"})

hl.bind("SUPER + ALT + H", hl.dsp.exec_cmd("python3 " .. ids .. "/move_window.py left"),  {repeating = true, description = "ID: Move window left"})
hl.bind("SUPER + ALT + J", hl.dsp.exec_cmd("python3 " .. ids .. "/move_window.py down"),  {repeating = true, description = "ID: Move window down"})
hl.bind("SUPER + ALT + K", hl.dsp.exec_cmd("python3 " .. ids .. "/move_window.py up"),    {repeating = true, description = "ID: Move window up"})
hl.bind("SUPER + ALT + L", hl.dsp.exec_cmd("python3 " .. ids .. "/move_window.py right"), {repeating = true, description = "ID: Move window right"})

hl.bind("SUPER + ALT + SHIFT + H", hl.dsp.exec_cmd("python3 " .. ids .. "/resize_window.py left"),  {repeating = true, description = "ID: Resize window left"})
hl.bind("SUPER + ALT + SHIFT + J", hl.dsp.exec_cmd("python3 " .. ids .. "/resize_window.py down"),  {repeating = true, description = "ID: Resize window down"})
hl.bind("SUPER + ALT + SHIFT + K", hl.dsp.exec_cmd("python3 " .. ids .. "/resize_window.py up"),    {repeating = true, description = "ID: Resize window up"})
hl.bind("SUPER + ALT + SHIFT + L", hl.dsp.exec_cmd("python3 " .. ids .. "/resize_window.py right"), {repeating = true, description = "ID: Resize window right"})
