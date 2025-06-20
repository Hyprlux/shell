#!/usr/bin/env bash

dbus='quickshell.dbus.properties.warning = false;quickshell.dbus.dbusmenu.warning = false'
notifs='quickshell.service.notifications.warning = false'
sni='quickshell.service.sni.host.warning = false'
process='QProcess: Destroyed while process'
cache="Cannot open: file://$XDG_CACHE_HOME/hyprlux/imagecache/"

src="$(dirname "$(readlink -f "$0")")"

qs -p "$src" --log-rules "$dbus;$notifs;$sni" | grep -vF -e "$process" -e "$cache"
