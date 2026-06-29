#!/bin/bash

# 1. Nhận hành động
ACTION=$1
case $ACTION in
    up) wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+ ;;
    down) wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%- ;;
    mute) wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle ;;
esac

# 2. Lấy trạng thái
MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -c MUTED)
VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')

# 3. Logic hiển thị giao diện Typography
if [ "$MUTED" -eq 1 ]; then
    # Icon Mute Nerd Font
    notify-send -a "Volume" -u low -h string:x-dunst-stack-tag:volume_notif -h int:value:0 "󰝟   Đã tắt tiếng"
else
    # Gán Icon theo mức âm lượng
    if [ "$VOL" -lt 30 ]; then
        ICON="󰕿"  # Loa nhỏ
    elif [ "$VOL" -lt 70 ]; then
        ICON="󰖀"  # Loa vừa
    else
        ICON="󰕾"  # Loa to
    fi

    # Gửi thông báo không dùng ảnh, chỉ dùng text và bar
    notify-send -a "Volume" -u low -h string:x-dunst-stack-tag:volume_notif -h int:value:"$VOL" "$ICON   Âm lượng: ${VOL}%"
fi