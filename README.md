<h1 align=center>hyprlux-shell</h1>

<div align=center>

![GitHub last commit](https://img.shields.io/github/last-commit/hyprlux/shell?style=for-the-badge&labelColor=101418&color=9ccbfb)
![GitHub repo size](https://img.shields.io/github/repo-size/hyprlux/shell?style=for-the-badge&labelColor=101418&color=d3bfe6)

</div>

> [!IMPORTANT]
> This repo is a fork of [caelestia-dots](https://github.com/caelestia-dots) [shell](https://github.com/caelestia-dots/shell) repo, with added AI components and anime image generation using [end-4](https://github.com/end-4)'s [config](https://github.com/end-4/dots-hyprland)

https://github.com/user-attachments/assets/0840f496-575c-4ca6-83a8-87bb01a85c5f

## Components

- Widgets: [`Quickshell`](https://quickshell.outfoxxed.me)
- Window manager: [`Hyprland`](https://hyprland.org)
- Dots: [`hyprlux`](https://github.com/Hyprlux/dots)

## Installation

This is not implemented as of now.

## Usage

The shell can be started in two ways: via systemd or manually running `hyprlux shell`.

### Via systemd

The install script creates and enables the systemd service `hyprlux-shell.service` which should automatically start the
shell on login.

### Via command

If not on a system that uses systemd, you can manually start the shell via `hyprlux-shell`.
To autostart it on login, you can use an `exec-once` rule in your Hyprland config:
```
exec-once = hyprlux shell
```

### Shortcuts/IPC

All keybinds are accessible via Hyprland [global shortcuts](https://wiki.hyprland.org/Configuring/Binds/#dbus-global-shortcuts).

All IPC commands can be accessed via `hyprlux shell ...`. For example
```sh
hyprlux shell mpris getActive trackTitle
```

The list of IPC commands can be shown via `hyprlux shell help`:
```
> hyprlux shell help
target mpris
  function stop(): void
  function play(): void
  function next(): void
  function getActive(prop: string): string
  function list(): string
  function playPause(): void
  function pause(): void
  function previous(): void
target drawers
  function list(): string
  function toggle(drawer: string): void
target wallpaper
  function list(): string
  function get(): string
  function set(path: string): void
target notifs
  function clear(): void
```

### PFP/Wallpapers

The profile picture for the dashboard is read from the file `~/.face`, so to set it just put your image there.

The wallpapers for the wallpaper switcher are read from `~/Pictures/Wallpapers`, so put your wallpapers there for
them to show up in the switcher (you need to restart the shell after changing stuff in `~/Pictures/Wallpapers` sadly,
no watching for changes yet).

To set the wallpaper, you can use the command `hyprlux wallpaper`. Use `hyprlux wallpaper -h` for more info about
the command.

## Credits

Thanks to the Hyprland discord community (especially the homies in #rice-discussion) for all the help and suggestions
for improving these dots!

A special thanks to [@outfoxxed](https://github.com/outfoxxed) for making Quickshell and the effort put into fixing issues
and implementing various feature requests.

Another special thanks to [@end_4](https://github.com/end-4) for his [config](https://github.com/end-4/dots-hyprland)
which helped me a lot with learning how to use Quickshell.

Finally another thank you to all the configs I took inspiration from (only one for now):
- [Axenide/Ax-Shell](https://github.com/Axenide/Ax-Shell)