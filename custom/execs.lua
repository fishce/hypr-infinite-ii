hl.on("hyprland.start", function()
    hl.exec_cmd("python3 ~/.config/hypr/custom/scripts/infinite-desktop/infinite_desktop_core.py 1.6 > /tmp/infinite-desktop.log 2>&1")
end)
