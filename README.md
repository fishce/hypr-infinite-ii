# Hyprland Infinite Desktop w/ ii/end4-pC setup

**Note: Keybinds remapped for ii/end4-pC.** The original upstream keybinds
conflict with the default ii/end4-pC binds, so this repo remaps them as
shown below.

> Remapped keybinds for ii/end4-pC

## Credits

- Original project: [sarodscommits/hyprland-infinitie-desktop-v2](https://github.com/sarodscommits/hyprland-infinitie-desktop-v2) by sarodscommits
- ii dotfiles: [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland); [pctrade/end4-pC](https://github.com/pctrade/end4-pC) (fork of ii)

## Installation

0. Fully install ii dotfiles first (from [end-4/dots-hyprland](https://github.com/end-4/dots-hyprland)).
   Optional alternative: [pctrade/end4-pC](https://github.com/pctrade/end4-pC) — fork of ii.

1. Install dependencies:
   ```bash
   sudo pacman -S python python-evdev bash jq
   sudo usermod -aG input $USER   # re-login after this
   ```

2. Copy scripts:
   ```bash
   mkdir -p ~/.config/hypr/custom/scripts/infinite-desktop
   cp scripts/* ~/.config/hypr/custom/scripts/infinite-desktop/
   chmod +x ~/.config/hypr/custom/scripts/infinite-desktop/*.sh \
            ~/.config/hypr/custom/scripts/infinite-desktop/*.py
   ```

3. Merge the custom config:
   - Append `custom/execs.lua` to `~/.config/hypr/custom/execs.lua`
   - Append `custom/keybinds.lua` to `~/.config/hypr/custom/keybinds.lua`
   - In `~/.config/hypr/hyprland/keybinds.lua`, change the "Focus in direction"
     loop (line ~159) from `"SUPER + " .. arrowkey[i]` to
     `"SUPER + ALT + " .. arrowkey[i]`

4. Reload Hyprland: `hyprctl reload`

## Remapped keybinds

| Action | Keybind | Upstream default (changed because) |
|---|---|---|
| Workspace prev / next | `SUPER+ALT+Z` / `SUPER+ALT+X` | `SUPER+Z/X` — `SUPER+X` = text editor |
| Move window to prev/next workspace | `SUPER+ALT+SHIFT+Z` / `+X` | `SUPER+SHIFT+Z/X` — `SUPER+SHIFT+X` = screen OCR |
| Toggle float/tiling (all windows) | `SUPER+Y` | `SUPER+D` — `SUPER+D` = maximize |
| Navigate (focus) floating windows | `SUPER+arrows` | `SUPER+arrows` free after moving focus-direction bind |
| Move tiled window | `SUPER+ALT+SHIFT+arrows` | `SUPER+ALT+arrows` |
| Move floating window | `SUPER+ALT+HJKL` | `SUPER+SHIFT+arrows` — used by window move |
| Resize window | `SUPER+ALT+SHIFT+HJKL` | `CTRL+SUPER+arrows` — used by workspace focus |
| Pan the whole canvas | Hold `SUPER+ALT` + move mouse | same as upstream |

(H=left, J=down, K=up, L=right)

## Showcase

[![Watch the showcase](https://img.youtube.com/vi/2fQ3edEVxfE/maxresdefault.jpg)](https://youtu.be/2fQ3edEVxfE)

▶ Watch on YouTube: https://youtu.be/2fQ3edEVxfE
