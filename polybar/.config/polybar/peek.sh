#!/usr/bin/env bash

PIDFILE="/tmp/polybar_peek.pid"

# Nếu bar ĐANG HIỆN -> Tắt
if [ -f "$PIDFILE" ]; then
    kill $(cat "$PIDFILE") 2>/dev/null
    rm -f "$PIDFILE"
    polybar-msg cmd hide
    exit 0
fi

# Nếu bar ĐANG ẨN -> Hiện lên
polybar-msg cmd show

# NGAY LẬP TỨC ép Z-index của Polybar lên lớp cao nhất
xdotool search --class "polybar" windowraise 2>/dev/null

# Tiến trình đếm ngược 8 giây
(
    sleep 8
    polybar-msg cmd hide
    rm -f "$PIDFILE"
) &

echo $! > "$PIDFILE"