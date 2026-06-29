#!/usr/bin/env bash

# Tắt các tiến trình cũ
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.1; done

# Khởi động Polybar
polybar island 2>&1 | tee -a /tmp/polybar.log & disown

# Chờ đến khi X11 thực sự sinh ra cửa sổ Polybar (Bắt được ID)
POLYBAR_ID=""
while [ -z "$POLYBAR_ID" ]; do
    POLYBAR_ID=$(xdotool search --class "polybar" | head -n 1)
    sleep 0.1
done

# Đẩy lên trên cùng
xdotool windowraise $POLYBAR_ID

# Đợi IPC sẵn sàng rồi ẩn đi chuẩn bị cho peek.sh
until polybar-msg cmd hide >/dev/null 2>&1; do
    sleep 0.1
done